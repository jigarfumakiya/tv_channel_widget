import 'package:tv_channel_widget/tv_channel_widget.dart';

final conflitingShowsList = [
  TvChannel(channelName: 'Discovery+', showItems: [
    ShowItem(
        showName: 'Gold Rush',
        showStartTime: DateTime(2023, 1, 6, 00, 0),
        showEndTime: DateTime(2023, 1, 6, 1, 0)),
    ShowItem(
        showName: 'Food Factory',
        showStartTime: DateTime(2023, 1, 6, 1, 0),
        showEndTime: DateTime(2023, 1, 6, 1, 30)),
    ShowItem(
        showName: 'Miso Huge',
        showStartTime: DateTime(2023, 1, 6, 1, 0),
        showEndTime: DateTime(2023, 1, 6, 2, 30)),
    ShowItem(
        showName: 'Race of Life',
        showStartTime: DateTime(2023, 1, 6, 2, 30),
        showEndTime: DateTime(2023, 1, 6, 3, 0)),
    ShowItem(
        showName: 'Impossible',
        showStartTime: DateTime(2023, 1, 6, 3, 0),
        showEndTime: DateTime(2023, 1, 6, 5, 0)),
  ]),
];
