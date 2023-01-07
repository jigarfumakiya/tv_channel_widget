import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tv_channel_widget/src/model/tv_channle.dart';
import 'package:tv_channel_widget/src/utils/utils.dart';

/// Renders a Channel widget with there shows [BarChartData].
class ChannelWidget extends StatefulWidget {
  /// [channelShows] determines how the [ShowList] will look like,
  /// It will make sure that all show will in particuler order
  const ChannelWidget({
    Key? key,
    required this.channelShows,
    this.showTime = false,
    this.moveToCurrentTime = false,
  }) : super(key: key);

  /// Determines how the [ChannelWidget] should look.
  final List<TvChannel> channelShows;

  /// Determines To show time above the widget.
  /// Defaults to false
  final bool showTime;

  /// Move widget to current date and time.
  /// Defaults to false
  final bool moveToCurrentTime;

  @override
  State<ChannelWidget> createState() => _ChannelWidgetState();
}

class _ChannelWidgetState extends State<ChannelWidget> {
  final scrollController = ScrollController();
  GlobalKey scrollControllerKey = GlobalKey();

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
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              fit: FlexFit.tight,
              child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: widget.showTime
                      ? (widget.channelShows.length + 1)
                      : widget.channelShows.length,
                  itemBuilder: (context, index) {
                    if (index == 0 && widget.showTime) {
                      return const SizedBox(
                        height: 20,
                        width: double.infinity,
                      );
                    }

                    return Container(
                      height: 100,
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      color: Colors.amber,
                    );
                  }),
            ),
            const SizedBox(width: 10),
            Flexible(
              fit: FlexFit.loose,
              child: SingleChildScrollView(
                  controller: scrollController,
                  physics: const ClampingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (widget.showTime)
                          SizedBox(
                            height: 20,
                            child: Row(
                              key: scrollControllerKey,
                              children: getTimerList()
                                  .map((e) => SizedBox(
                                        width: getCalculatedWidth(30),
                                        child: Text(e),
                                      ))
                                  .toList(),
                            ),
                          ),
                        ...widget.channelShows.map((channel) => Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: List.generate(channel.showItems.length,
                                  (index) {
                                final mins = getShowsLengthInMin(
                                    channel.showItems[index]);
                                return Container(
                                  height: 100,
                                  width: getCalculatedWidth(mins),
                                  color: Color((math.Random().nextDouble() *
                                              0xFFFFFF)
                                          .toInt())
                                      .withOpacity(1.0),
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 5),
                                  child: Column(
                                    children: <Widget>[
                                      Text(channel.showItems[index].showName),
                                      Text(channel
                                          .showItems[index].showStartTime
                                          .toString()),
                                      Text(channel.showItems[index].showEndTime
                                          .toString()),
                                    ],
                                  ),
                                );
                              }),
                            ))
                      ])),
            )
          ],
        ),
      ],
    );
  }

  double getCalculatedWidth(int showMins) {
    final screenWidget = MediaQuery.of(context).size;
    final restWidth = screenWidget.width * 0.8;
    final perMinWidth = restWidth / 60;

    return perMinWidth * showMins;
  }

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

  /// this function determines the current position of widget
  /// Calculated the width and move to current position
  void moveToCurrentPosition() {
    final leftMin = Utils.getMidNightToNowDiffInMin();
    final scrollPosition = getCalculatedWidth(leftMin);
    scrollController.jumpTo(scrollPosition);
  }
}
