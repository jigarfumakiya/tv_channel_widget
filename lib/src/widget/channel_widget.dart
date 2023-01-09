import 'dart:core';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tv_channel_widget/src/model/tv_channle.dart';
import 'package:tv_channel_widget/src/utils/utils.dart';

typedef ItemBuilder = Widget Function(BuildContext context, int index);
typedef ShowBuilder = Widget Function(BuildContext context, ShowItem show);

/// Renders a Channel widget with there shows.
class ChannelWidget extends StatefulWidget {
  /// [channelShows] determines how the [ShowList] will look like,
  /// It will make sure that all show will in particular order
  ChannelWidget({
    Key? key,
    required this.channelShows,
    required this.headerBuilder,
    required this.showsBuilder,
    this.showTime = false,
    this.moveToCurrentTime = false,
    this.headerWidth = 150,
    this.verticalPadding = 10,
    this.timerRowHeight = 20,
    this.disableHorizontalScroll = false,
  }) : super(key: key) {
    // Assert that there are no conflicting show times in the channelShows list
    final conflictingShows = getConflictingShows(channelShows);
    assert(conflictingShows.isEmpty,
        'Conflicting show times found: $conflictingShows');
  }

  /// Determines how the [ChannelWidget] should look.
  final List<TvChannel> channelShows;

  /// Determines To show time above the widget.
  /// Defaults to false
  final bool showTime;

  /// Move widget to current date and time.
  /// Defaults to false
  final bool moveToCurrentTime;

  /// Determines To width of header.
  /// Defaults to 150
  final double headerWidth;

  /// Display a widget for header item
  final ItemBuilder headerBuilder;

  /// Display a widget for shows item
  final ShowBuilder showsBuilder;

  /// Determines vertical padding
  final double verticalPadding;

  /// Determines height for timer row
  /// Defaults to 20 px
  final double timerRowHeight;

  /// Determines scroll behavior for horizontal scroll
  /// Defaults to false
  final bool disableHorizontalScroll;

  @override
  State<ChannelWidget> createState() => _ChannelWidgetState();

  /// Finds all show items that have conflicting start and end times in the given list of TV channels.
  ///
  /// A show item is considered to be in conflict if it overlaps with another show item in the same TV channel.
  /// This can include show items that start or end at the same time, or show items that are completely contained within
  /// another show item.
  ///
  /// Returns a list of all show items that have conflicting start and end times.
  List<ShowItem> getConflictingShows(List<TvChannel> showsList) {
    List<ShowItem> conflictingShows = [];

    // Create a map to store the show times for each channel
    Map<TvChannel, List<ShowItem>> channelShowMap = {};
    for (var channel in showsList) {
      channelShowMap[channel] = channel.showItems;
    }

    // Iterate over the map and check for conflicting show times
    mainLoop:
    for (var channel in channelShowMap.keys) {
      for (int i = 0; i < channelShowMap[channel]!.length; i++) {
        ShowItem show = channelShowMap[channel]![i];
        for (int j = i + 1; j < channelShowMap[channel]!.length; j++) {
          ShowItem comparisonShow = channelShowMap[channel]![j];
          // Check if the show and comparison show overlap
          if ((show.showStartTime.isAfter(comparisonShow.showStartTime) &&
                  show.showStartTime.isBefore(comparisonShow.showEndTime)) ||
              (show.showEndTime.isAfter(comparisonShow.showStartTime) &&
                  show.showEndTime.isBefore(comparisonShow.showEndTime)) ||
              (show.showStartTime.isBefore(comparisonShow.showStartTime) &&
                  show.showEndTime.isAfter(comparisonShow.showEndTime))) {
            conflictingShows.add(show);
            conflictingShows.add(comparisonShow);
            break mainLoop;
          }
        }
      }
    }
    return conflictingShows;
  }
}

class _ChannelWidgetState extends State<ChannelWidget> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        if (widget.moveToCurrentTime) {
          moveToCurrentPosition();
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: widget.headerWidth,
          child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: widget.showTime
                  ? (widget.channelShows.length + 1)
                  : widget.channelShows.length,
              itemBuilder: (context, index) {
                if (index == 0 && widget.showTime) {
                  return SizedBox(
                    height: widget.timerRowHeight,
                    width: widget.headerWidth,
                  );
                }
                return Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: widget.verticalPadding),
                  child: widget.headerBuilder(
                      context, widget.showTime ? (index - 1) : index),
                );
              }),
        ),
        const SizedBox(width: 10),
        Flexible(
          fit: FlexFit.loose,
          child: CustomScrollView(
            scrollDirection: Axis.horizontal,
            controller: _scrollController,
            physics: widget.disableHorizontalScroll
                ? const NeverScrollableScrollPhysics()
                : const ClampingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                  child: Column(
                children: [
                  if (widget.showTime) buildTimerRow(),
                  buildChannelRows(widget.channelShows.first),
                ],
              ))
            ],
          ),
        )
      ],
    );
  }

  Row buildChannelRows(TvChannel channels) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: buildShows(channels.showItems),
    );
  }

  List<Widget> buildShows(List<ShowItem> shows) {
    return List.generate(shows.length, (index) {
      final mins = getShowsLengthInMin(shows[index]);
      return Padding(
        padding: EdgeInsets.symmetric(vertical: widget.verticalPadding),
        child: SizedBox(
          width: getCalculatedWidth(mins),
          child: widget.showsBuilder(context, shows[index]),
        ),
      );
    });
  }

  Widget buildTimerRow() {
    return SizedBox(
      height: widget.timerRowHeight,
      child: Row(
        children: getTimerList()
            .map((e) => SizedBox(
                  width: getCalculatedWidth(30),
                  child: Text(e),
                ))
            .toList(),
      ),
    );
  }

  /// This function determines the width of show
  /// Calculated the width per Minute
  double getCalculatedWidth(int showMins) {
    final screenWidget = MediaQuery.of(context).size;
    final restWidth = screenWidget.width * 0.8;
    final perMinWidth = restWidth / 60;
    return (perMinWidth * showMins);
  }

  /// This function finds the show length in minutes
  int getShowsLengthInMin(ShowItem showItem) {
    return Utils.getDateDiffInMin(showItem.showStartTime, showItem.showEndTime);
  }

  List<String> getTimerList() {
    final timerList = <String>[];
    timerList.add('00:00');
    var todayDate = DateTime(2023, 1, 6, 00, 0);
    for (int i = 0; i < 46; i++) {
      todayDate = todayDate.add(const Duration(minutes: 30));
      timerList.add(DateFormat('HH:mm').format(todayDate));
    }
    return timerList;
  }

  /// This function determines the current position of widget
  /// Calculated the width and move to current position
  void moveToCurrentPosition() {
    final leftMin = Utils.getMidNightToNowDiffInMin();
    final scrollPosition = getCalculatedWidth(leftMin);
    _scrollController.jumpTo(scrollPosition);
  }
}
