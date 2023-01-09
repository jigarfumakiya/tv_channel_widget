# ChannelWidget
#####The ChannelWidget is a Flutter widget that displays a list of TV channels and their corresponding shows. It is designed to be flexible and customizable, allowing you to specify the appearance and behavior of the widget to suit your needs.
## Features

- Displays a list of TV channels and their corresponding shows
- Customizable appearance using headerBuilder and showsBuilder callbacks
- Option to show the time above the widget
- Option to move the widget to the current date and time
- Customizable layout options such as header width, item height, vertical padding, and timer row height
- Option to disable horizontal scrolling

## Installation

Add `tv_widget` as a dependency in your pubspec.yaml file ([what?](https://flutter.io/using-packages/)).

Import Channel Widget View:
```dart
import 'package:tv_channel_widget/tv_channel_widget.dart';
```
## How to use

Simply create a ChannelWidget widget, and pass the required params:

### Create List with `TvChannel` class
```dart
    showsList = [
      TvChannel(channelName: 'Discovery+', showItems: [
        ShowItem(
            showName: 'Show 1',
            showStartTime: DateTime(2023, 1, 6, 00, 0),
            showEndTime: DateTime(2023, 1, 6, 1, 0)),
        ShowItem(
            showName: 'Show 2',
            showStartTime: DateTime(2023, 1, 6, 1, 0),
            showEndTime: DateTime(2023, 1, 6, 1, 30)),
        ShowItem(
            showName: 'Show 3',
            showStartTime: DateTime(2023, 1, 6, 1, 30),
            showEndTime: DateTime(2023, 1, 6, 2, 30)),
        ShowItem(
            showName: 'Show 4',
            showStartTime: DateTime(2023, 1, 6, 2, 30),
            showEndTime: DateTime(2023, 1, 6, 3, 0)),
        ShowItem(
            showName: 'Show 5',
            showStartTime: DateTime(2023, 1, 6, 3, 0),
            showEndTime: DateTime(2023, 1, 6, 5, 0)),
        ShowItem(
            showName: 'Show 6',
            showStartTime: DateTime(2023, 1, 6, 5, 30),
            showEndTime: DateTime(2023, 1, 6, 7, 0)),
        ShowItem(
            showName: 'Show 7',
            showStartTime: DateTime(2023, 1, 6, 7, 0),
            showEndTime: DateTime(2023, 1, 6, 9, 0)),
        ShowItem(
            showName: 'Show 8',
            showStartTime: DateTime(2023, 1, 6, 9, 0),
            showEndTime: DateTime(2023, 1, 6, 12, 0)),
        ShowItem(
            showName: 'Show 9',
            showStartTime: DateTime(2023, 1, 6, 12, 0),
            showEndTime: DateTime(2023, 1, 6, 13, 0)),
        ShowItem(
            showName: 'Show 10',
            showStartTime: DateTime(2023, 1, 6, 13, 0),
            showEndTime: DateTime(2023, 1, 6, 15, 0)),
        ShowItem(
            showName: 'Show 11',
            showStartTime: DateTime(2023, 1, 6, 15, 0),
            showEndTime: DateTime(2023, 1, 6, 18, 0)),
         ShowItem(
             showName: 'Show 12',
             showStartTime: DateTime(2023, 1, 6, 18, 0),
             showEndTime: DateTime(2023, 1, 6, 19, 0)),
        ShowItem(
            showName: 'Show 13',
            showStartTime: DateTime(2023, 1, 6, 19, 0),
            showEndTime: DateTime(2023, 1, 6, 21, 0)),
        ShowItem(
            showName: 'Show 14',
            showStartTime: DateTime(2023, 1, 6, 21, 0),
            showEndTime: DateTime(2023, 1, 6, 21, 30)),
        ShowItem(
            showName: 'Show 15',
            showStartTime: DateTime(2023, 1, 6, 21, 30),
            showEndTime: DateTime(2023, 1, 6, 23, 59)),
      ])
     ]
```