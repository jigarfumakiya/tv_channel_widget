import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:tv_channel_widget/tv_channel_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<TvChannel> showsList = [];

  @override
  void initState() {
    super.initState();

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
            showStartTime: DateTime(2023, 1, 6, 5, 30),
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
      TvChannel(channelName: 'Discovery+', showItems: [
        ShowItem(
            showName: 'Gold',
            showStartTime: DateTime(2023, 1, 6, 00, 0),
            showEndTime: DateTime(2023, 1, 6, 00, 30)),
        ShowItem(
            showName: 'Food',
            showStartTime: DateTime(2023, 1, 6, 0, 30),
            showEndTime: DateTime(2023, 1, 6, 1, 0)),
        ShowItem(
            showName: 'Miso',
            showStartTime: DateTime(2023, 1, 6, 1, 0),
            showEndTime: DateTime(2023, 1, 6, 2, 30)),
        ShowItem(
            showName: 'Race',
            showStartTime: DateTime(2023, 1, 6, 2, 30),
            showEndTime: DateTime(2023, 1, 6, 3, 0)),
        ShowItem(
            showName: 'Impossible',
            showStartTime: DateTime(2023, 1, 6, 3, 0),
            showEndTime: DateTime(2023, 1, 6, 5, 0)),
        ShowItem(
            showName: 'BPL',
            showStartTime: DateTime(2023, 1, 6, 5, 30),
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
    ];
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        title: const Text('Channel Widget'),
      ),
      body: ChannelWidget(
        channelShows: showsList,
        showTime: true,
        moveToCurrentTime: true,
        verticalPadding: 10,
        disableHorizontalScroll: false,
        headerBuilder: (context, index) {
          final item = showsList[index];
          return Container(
            width: 100,
            height: 90,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.amber),
            child: Center(child: Text(item.channelName)),
          );
        },
        showsBuilder: (context, show) {
          final channel = show;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              height: 90,
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
    );
  }
}
