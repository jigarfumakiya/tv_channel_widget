import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tv_channel_widget/src/model/tv_channle.dart';
import 'package:tv_channel_widget/src/utils/utils.dart';

typedef ItemBuilder = Widget Function(BuildContext context, int index);
typedef ShowBuilder = Widget Function(BuildContext context, ShowItem show);

/// Renders a Channel widget with there shows [BarChartData].
class ChannelWidget extends StatefulWidget {
  /// [channelShows] determines how the [ShowList] will look like,
  /// It will make sure that all show will in particuler order
  const ChannelWidget({
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
  }) : super(key: key);

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
          child: SingleChildScrollView(
              controller: _scrollController,
              physics: widget.disableHorizontalScroll
                  ? const NeverScrollableScrollPhysics()
                  : const ClampingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (widget.showTime) buildTimerRow(),
                    ...widget.channelShows.map((channel) => Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:
                              List.generate(channel.showItems.length, (index) {
                            final mins =
                                getShowsLengthInMin(channel.showItems[index]);
                            return Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: widget.verticalPadding),
                              child: SizedBox(
                                  width: getCalculatedWidth(mins),
                                  child: widget.showsBuilder(
                                      context, channel.showItems[index])),
                            );
                          }),
                        ))
                  ])),
        )
      ],
    );
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
    for (int i = 0; i < 47; i++) {
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
