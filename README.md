# ChannelWidget
ChannelWidget is inspired by Amazon Prime / Jio Tv and fully developed in dart with ❤️ from scratch. Supports all the platfrom.

## Features
- Displays a list of TV channels and their corresponding shows
- Customizable appearance using ChannelBuilder and showsBuilder callbacks
- Option to show the time above the widget
- Option to move the widget to the current date and time
- Customizable layout options such as header width, item height, vertical padding, and timer row height
- Option to disable horizontal scrolling

## Installation

Add `tv_widget` as a dependency in your pubspec.yaml file ```yaml
```yaml
dependencies:
  tv_channel_widget: '^0.0.1'
```
You should then run `flutter packages get` in your terminal so as to get the package.


Import Channel Widget :
```dart
import 'package:tv_channel_widget/tv_channel_widget.dart';
```
## Usage
#### Create List with `TvChannel` class
```dart
    showsList = [
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
            showStartTime: DateTime(2023, 1, 6, 1, 30),
            showEndTime: DateTime(2023, 1, 6, 2, 30)),
        ShowItem(
            showName: 'Race of Life',
            showStartTime: DateTime(2023, 1, 6, 2, 30),
            showEndTime: DateTime(2023, 1, 6, 3, 0)),
        ShowItem(
            showName: 'Impossible',
            showStartTime: DateTime(2023, 1, 6, 3, 0),
            showEndTime: DateTime(2023, 1, 6, 5, 0)),
        ShowItem(
            showName: 'BPL',
            showStartTime: DateTime(2023, 1, 6, 5, 0),
            showEndTime: DateTime(2023, 1, 6, 7, 0)),
        ShowItem(
            showName: 'Contact',
            showStartTime: DateTime(2023, 1, 6, 7, 0),
            showEndTime: DateTime(2023, 1, 6, 9, 0)),
        ShowItem(
            showName: 'Gold Rush The Movie',
            showStartTime: DateTime(2023, 1, 6, 9, 0),
            showEndTime: DateTime(2023, 1, 6, 12, 0)),
        ShowItem(
            showName: 'Gold Rush The Movie',
            showStartTime: DateTime(2023, 1, 6, 12, 0),
            showEndTime: DateTime(2023, 1, 6, 13, 0)),
        ShowItem(
            showName: 'Gold Rush The Movie Two',
            showStartTime: DateTime(2023, 1, 6, 13, 0),
            showEndTime: DateTime(2023, 1, 6, 15, 0)),
        ShowItem(
            showName: 'Gold Rush The Movie Three',
            showStartTime: DateTime(2023, 1, 6, 15, 0),
            showEndTime: DateTime(2023, 1, 6, 18, 0)),
        ShowItem(
            showName: 'Gold Rush The Movie Three',
            showStartTime: DateTime(2023, 1, 6, 18, 0),
            showEndTime: DateTime(2023, 1, 6, 19, 0)),
        ShowItem(
            showName: 'Gold Rush The Movie Three',
            showStartTime: DateTime(2023, 1, 6, 19, 0),
            showEndTime: DateTime(2023, 1, 6, 21, 0)),
        ShowItem(
            showName: 'Gold Rush The Movie Three',
            showStartTime: DateTime(2023, 1, 6, 21, 0),
            showEndTime: DateTime(2023, 1, 6, 21, 30)),
        ShowItem(
            showName: 'Gold Rush Five',
            showStartTime: DateTime(2023, 1, 6, 21, 30),
            showEndTime: DateTime(2023, 1, 6, 23, 59)),
      ]),
     ]
```

#### Create ChannelWidget
```dart
ChannelWidget(
        channelShows: showsList,  // <-- Pass list here
        channelBuilder: (context, index) {  // <-- Customize your channel widget
          final item = showsList[index];
          return Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.amber),
            child: Center(child: Text(item.channelName)),
          );
        },
        showsBuilder: (context, show) {   // <-- Customize your shows widget
          final channel = show;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                    .withOpacity(1.0),
              ),
              child: Column(
                children: <Widget>[
                  Text(channel.showName),
                  Text(channel.showStartTime.toString()),
                  Text(channel.showEndTime.toString()),
                ],
              ),
            ),
          );
        },
      ),
```


#### Parameters explained:
* `channelBuilder:` - This is a widget builder for Channel you can customzie it how every you want.For channelBuilder widget it will take  **headerWidth** value.

* `showsBuilder:` - This is a widget builder forC channel Shows, you can see shows in horizontal view with it's particuler channel.

For further usage refer the [`example`](https://github.com/jigarfumakiya/tv_channel_widget/tree/main/example/lib) available.

[comment]: <> (**_Note :_** If you added more than four pages in the list then there might be overlapping between `page icons` and `skip button`, so my suggestion is just make the `showSkipButton: false`.)

# Documentation

### ChannelWidget Widget
| Dart attribute          | Datatype            | Description                                                                                                       |              Default Value              |
| :---------------------- | :------------------ | :---------------------------------------------------------------------------------------------------------------- | :-------------------------------------: |
| channelShows                   | List\<TvChannel\> |  List of channal with there shows.                                                                                |                  (required)                   |
| channelBuilder                   | Widget |  widget to display for each channal item. |(required)                   |
| showsBuilder                   | Widget |  widget to display for each show item. |(required)                   |
| showTime                   | bool |  whether to show the time above the widget. |true                   |
| moveToCurrentTime                   | bool |  determines whether to move the widget to the current date and time. |true                   |
| disableHorizontalScroll                   | bool |  determines the scroll behavior for horizontal scrolling. |false
| headerWidth                   | double |  determines whether to move the widget to the current date and time. |150
| itemHeight                   | double |  determines height of channel and shows item. |100
| timerRowHeight                   | double |  determines height of timer. |10
| verticalPadding                   | double | vertical padding to channal and shows item |20


For help on editing package code, view the [flutter documentation](https://flutter.io/developing-packages/).

# Bugs or Requests

If you encounter any problems feel free to open an [issue](https://github.com/jigarfumakiya/tv_channel_widget/issues/new?template=bug_report.md). If you feel the library is missing a feature, please raise a [ticket](https://github.com/jigarfumakiya/tv_channel_widget/issues/new?template=feature_request.md) on GitHub and I'll look into it. Pull request are also welcome.

## Example project and blog for better understanding 🚀

[comment]: <> (<a href="https://medium.com/@sharmaprateek196/how-to-create-seat-booking-layout-in-flutter-33cff82b3edc">Read my article with example</a>)

## Contributors 💻
Jigar Fumakiya - [Linkedin](https://www.linkedin.com/in/jigar-fumakiya-3080b8b7/) | [Github](https://github.com/jigarfumakiya)