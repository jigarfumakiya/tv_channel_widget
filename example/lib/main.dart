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
      title: 'Channl Widget Demo',
      theme: ThemeData(
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
      TvChannel(channelName: 'Discovery Beta', showItems: [
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
            showName: 'Gold Rush ',
            showStartTime: DateTime(2023, 1, 6, 12, 0),
            showEndTime: DateTime(2023, 1, 6, 13, 0)),
        ShowItem(
            showName: 'Street Outlaws',
            showStartTime: DateTime(2023, 1, 6, 13, 0),
            showEndTime: DateTime(2023, 1, 6, 15, 0)),
        ShowItem(
            showName: 'Sports',
            showStartTime: DateTime(2023, 1, 6, 15, 0),
            showEndTime: DateTime(2023, 1, 6, 17, 0)),
        ShowItem(
            showName: 'Sign off',
            showStartTime: DateTime(2023, 1, 6, 17, 0),
            showEndTime: DateTime(2023, 1, 6, 19, 0)),
        ShowItem(
            showName: 'Cricket',
            showStartTime: DateTime(2023, 1, 6, 19, 0),
            showEndTime: DateTime(2023, 1, 6, 20, 0)),
        ShowItem(
            showName: 'News',
            showStartTime: DateTime(2023, 1, 6, 20, 0),
            showEndTime: DateTime(2023, 1, 6, 20, 20)),
        ShowItem(
            showName: 'Road Kill',
            showStartTime: DateTime(2023, 1, 6, 20, 20),
            showEndTime: DateTime(2023, 1, 6, 21, 00)),
        ShowItem(
            showName: 'Shark Tank',
            showStartTime: DateTime(2023, 1, 6, 21, 0),
            showEndTime: DateTime(2023, 1, 6, 21, 30)),
        ShowItem(
            showName: 'Gold Rush Nine',
            showStartTime: DateTime(2023, 1, 6, 21, 30),
            showEndTime: DateTime(2023, 1, 6, 23, 59)),
      ]),
      TvChannel(channelName: 'Shorts Tv', showItems: [
        ShowItem(
            showName: 'Gold Rush',
            showStartTime: DateTime(2023, 1, 6, 00, 0),
            showEndTime: DateTime(2023, 1, 6, 00, 10)),
        ShowItem(
            showName: 'Gold Rush',
            showStartTime: DateTime(2023, 1, 6, 00, 10),
            showEndTime: DateTime(2023, 1, 6, 00, 40)),
        ShowItem(
            showName: 'Gold Rush',
            showStartTime: DateTime(2023, 1, 6, 00, 40),
            showEndTime: DateTime(2023, 1, 6, 01, 0)),
        ShowItem(
            showName: 'Ad',
            showStartTime: DateTime(2023, 1, 6, 1, 0),
            showEndTime: DateTime(2023, 1, 6, 1, 10)),
        ShowItem(
            showName: 'Ad',
            showStartTime: DateTime(2023, 1, 6, 1, 10),
            showEndTime: DateTime(2023, 1, 6, 1, 40)),
        ShowItem(
            showName: 'Food Factory',
            showStartTime: DateTime(2023, 1, 6, 1, 40),
            showEndTime: DateTime(2023, 1, 6, 1, 50)),
        ShowItem(
            showName: 'Race of Life',
            showStartTime: DateTime(2023, 1, 6, 1, 50),
            showEndTime: DateTime(2023, 1, 6, 2, 0)),
        ShowItem(
            showName: 'Race of Life',
            showStartTime: DateTime(2023, 1, 6, 2, 0),
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
            showEndTime: DateTime(2023, 1, 6, 9, 30)),
        ShowItem(
            showName: 'Gold Rush The Movie',
            showStartTime: DateTime(2023, 1, 6, 9, 30),
            showEndTime: DateTime(2023, 1, 6, 9, 50)),
        ShowItem(
            showName: 'Gold Rush The Movie',
            showStartTime: DateTime(2023, 1, 6, 9, 50),
            showEndTime: DateTime(2023, 1, 6, 10, 50)),
        ShowItem(
            showName: 'Gold Rush The Movie',
            showStartTime: DateTime(2023, 1, 6, 10, 50),
            showEndTime: DateTime(2023, 1, 6, 11, 20)),
        ShowItem(
            showName: 'Gold Rush The Movie',
            showStartTime: DateTime(2023, 1, 6, 11, 20),
            showEndTime: DateTime(2023, 1, 6, 12, 00)),
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
      TvChannel(channelName: 'Discovery Beta', showItems: [
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
            showName: 'Gold Rush ',
            showStartTime: DateTime(2023, 1, 6, 12, 0),
            showEndTime: DateTime(2023, 1, 6, 13, 0)),
        ShowItem(
            showName: 'Street Outlaws',
            showStartTime: DateTime(2023, 1, 6, 13, 0),
            showEndTime: DateTime(2023, 1, 6, 13, 10)),
        ShowItem(
            showName: 'Street Outlaws',
            showStartTime: DateTime(2023, 1, 6, 13, 10),
            showEndTime: DateTime(2023, 1, 6, 14, 0)),
        ShowItem(
            showName: 'Street Outlaws',
            showStartTime: DateTime(2023, 1, 6, 14, 0),
            showEndTime: DateTime(2023, 1, 6, 14, 30)),
        ShowItem(
            showName: 'Street Outlaws',
            showStartTime: DateTime(2023, 1, 6, 14, 30),
            showEndTime: DateTime(2023, 1, 6, 15, 0)),
        ShowItem(
            showName: 'Sports',
            showStartTime: DateTime(2023, 1, 6, 15, 0),
            showEndTime: DateTime(2023, 1, 6, 17, 0)),
        ShowItem(
            showName: 'Sign off',
            showStartTime: DateTime(2023, 1, 6, 17, 0),
            showEndTime: DateTime(2023, 1, 6, 19, 0)),
        ShowItem(
            showName: 'Cricket',
            showStartTime: DateTime(2023, 1, 6, 19, 0),
            showEndTime: DateTime(2023, 1, 6, 20, 0)),
        ShowItem(
            showName: 'News',
            showStartTime: DateTime(2023, 1, 6, 20, 0),
            showEndTime: DateTime(2023, 1, 6, 20, 20)),
        ShowItem(
            showName: 'Road Kill',
            showStartTime: DateTime(2023, 1, 6, 20, 20),
            showEndTime: DateTime(2023, 1, 6, 21, 00)),
        ShowItem(
            showName: 'Shark Tank',
            showStartTime: DateTime(2023, 1, 6, 21, 0),
            showEndTime: DateTime(2023, 1, 6, 21, 30)),
        ShowItem(
            showName: 'Gold Rush Nine',
            showStartTime: DateTime(2023, 1, 6, 21, 30),
            showEndTime: DateTime(2023, 1, 6, 23, 59)),
      ]),
      TvChannel(channelName: 'Discovery+', showItems: [
        ShowItem(
            showName: 'Gold Rush',
            showStartTime: DateTime(2023, 1, 6, 00, 0),
            showEndTime: DateTime(2023, 1, 6, 00, 45)),
        ShowItem(
            showName: 'Gold Rush',
            showStartTime: DateTime(2023, 1, 6, 00, 45),
            showEndTime: DateTime(2023, 1, 6, 01, 0)),
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
      TvChannel(channelName: 'Discovery Beta', showItems: [
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
            showName: 'Gold Rush ',
            showStartTime: DateTime(2023, 1, 6, 12, 0),
            showEndTime: DateTime(2023, 1, 6, 13, 0)),
        ShowItem(
            showName: 'Street Outlaws',
            showStartTime: DateTime(2023, 1, 6, 13, 0),
            showEndTime: DateTime(2023, 1, 6, 15, 0)),
        ShowItem(
            showName: 'Sports',
            showStartTime: DateTime(2023, 1, 6, 15, 0),
            showEndTime: DateTime(2023, 1, 6, 17, 0)),
        ShowItem(
            showName: 'Sign off',
            showStartTime: DateTime(2023, 1, 6, 17, 0),
            showEndTime: DateTime(2023, 1, 6, 19, 0)),
        ShowItem(
            showName: 'Cricket',
            showStartTime: DateTime(2023, 1, 6, 19, 0),
            showEndTime: DateTime(2023, 1, 6, 20, 0)),
        ShowItem(
            showName: 'News',
            showStartTime: DateTime(2023, 1, 6, 20, 0),
            showEndTime: DateTime(2023, 1, 6, 20, 20)),
        ShowItem(
            showName: 'Road Kill',
            showStartTime: DateTime(2023, 1, 6, 20, 20),
            showEndTime: DateTime(2023, 1, 6, 21, 00)),
        ShowItem(
            showName: 'Shark Tank',
            showStartTime: DateTime(2023, 1, 6, 21, 0),
            showEndTime: DateTime(2023, 1, 6, 21, 30)),
        ShowItem(
            showName: 'Gold Rush Nine',
            showStartTime: DateTime(2023, 1, 6, 21, 30),
            showEndTime: DateTime(2023, 1, 6, 23, 59)),
      ]),
      TvChannel(channelName: 'Shorts Tv', showItems: [
        ShowItem(
            showName: 'Gold Rush',
            showStartTime: DateTime(2023, 1, 6, 00, 0),
            showEndTime: DateTime(2023, 1, 6, 1, 0)),
        ShowItem(
            showName: 'Food Factory',
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
            showEndTime: DateTime(2023, 1, 6, 9, 30)),
        ShowItem(
            showName: 'Gold Rush The Movie',
            showStartTime: DateTime(2023, 1, 6, 9, 30),
            showEndTime: DateTime(2023, 1, 6, 9, 50)),
        ShowItem(
            showName: 'Gold Rush The Movie',
            showStartTime: DateTime(2023, 1, 6, 9, 50),
            showEndTime: DateTime(2023, 1, 6, 10, 50)),
        ShowItem(
            showName: 'Gold Rush The Movie',
            showStartTime: DateTime(2023, 1, 6, 10, 50),
            showEndTime: DateTime(2023, 1, 6, 11, 20)),
        ShowItem(
            showName: 'Gold Rush The Movie',
            showStartTime: DateTime(2023, 1, 6, 11, 20),
            showEndTime: DateTime(2023, 1, 6, 12, 00)),
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
      TvChannel(channelName: 'Discovery Beta', showItems: [
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
            showName: 'Gold Rush ',
            showStartTime: DateTime(2023, 1, 6, 12, 0),
            showEndTime: DateTime(2023, 1, 6, 13, 0)),
        ShowItem(
            showName: 'Street Outlaws',
            showStartTime: DateTime(2023, 1, 6, 13, 0),
            showEndTime: DateTime(2023, 1, 6, 13, 10)),
        ShowItem(
            showName: 'Street Outlaws',
            showStartTime: DateTime(2023, 1, 6, 13, 10),
            showEndTime: DateTime(2023, 1, 6, 14, 0)),
        ShowItem(
            showName: 'Street Outlaws',
            showStartTime: DateTime(2023, 1, 6, 14, 0),
            showEndTime: DateTime(2023, 1, 6, 14, 30)),
        ShowItem(
            showName: 'Street Outlaws',
            showStartTime: DateTime(2023, 1, 6, 14, 30),
            showEndTime: DateTime(2023, 1, 6, 15, 0)),
        ShowItem(
            showName: 'Sports',
            showStartTime: DateTime(2023, 1, 6, 15, 0),
            showEndTime: DateTime(2023, 1, 6, 17, 0)),
        ShowItem(
            showName: 'Sign off',
            showStartTime: DateTime(2023, 1, 6, 17, 0),
            showEndTime: DateTime(2023, 1, 6, 19, 0)),
        ShowItem(
            showName: 'Cricket',
            showStartTime: DateTime(2023, 1, 6, 19, 0),
            showEndTime: DateTime(2023, 1, 6, 20, 0)),
        ShowItem(
            showName: 'News',
            showStartTime: DateTime(2023, 1, 6, 20, 0),
            showEndTime: DateTime(2023, 1, 6, 20, 20)),
        ShowItem(
            showName: 'Road Kill',
            showStartTime: DateTime(2023, 1, 6, 20, 20),
            showEndTime: DateTime(2023, 1, 6, 21, 00)),
        ShowItem(
            showName: 'Shark Tank',
            showStartTime: DateTime(2023, 1, 6, 21, 0),
            showEndTime: DateTime(2023, 1, 6, 21, 30)),
        ShowItem(
            showName: 'Gold Rush Nine',
            showStartTime: DateTime(2023, 1, 6, 21, 30),
            showEndTime: DateTime(2023, 1, 6, 23, 59)),
      ]),
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
      TvChannel(channelName: 'Discovery Beta', showItems: [
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
            showName: 'Gold Rush ',
            showStartTime: DateTime(2023, 1, 6, 12, 0),
            showEndTime: DateTime(2023, 1, 6, 13, 0)),
        ShowItem(
            showName: 'Street Outlaws',
            showStartTime: DateTime(2023, 1, 6, 13, 0),
            showEndTime: DateTime(2023, 1, 6, 15, 0)),
        ShowItem(
            showName: 'Sports',
            showStartTime: DateTime(2023, 1, 6, 15, 0),
            showEndTime: DateTime(2023, 1, 6, 17, 0)),
        ShowItem(
            showName: 'Sign off',
            showStartTime: DateTime(2023, 1, 6, 17, 0),
            showEndTime: DateTime(2023, 1, 6, 19, 0)),
        ShowItem(
            showName: 'Cricket',
            showStartTime: DateTime(2023, 1, 6, 19, 0),
            showEndTime: DateTime(2023, 1, 6, 20, 0)),
        ShowItem(
            showName: 'News',
            showStartTime: DateTime(2023, 1, 6, 20, 0),
            showEndTime: DateTime(2023, 1, 6, 20, 20)),
        ShowItem(
            showName: 'Road Kill',
            showStartTime: DateTime(2023, 1, 6, 20, 20),
            showEndTime: DateTime(2023, 1, 6, 21, 00)),
        ShowItem(
            showName: 'Shark Tank',
            showStartTime: DateTime(2023, 1, 6, 21, 0),
            showEndTime: DateTime(2023, 1, 6, 21, 30)),
        ShowItem(
            showName: 'Gold Rush Nine',
            showStartTime: DateTime(2023, 1, 6, 21, 30),
            showEndTime: DateTime(2023, 1, 6, 23, 59)),
      ]),
      TvChannel(channelName: 'Shorts Tv', showItems: [
        ShowItem(
            showName: 'Gold Rush',
            showStartTime: DateTime(2023, 1, 6, 00, 0),
            showEndTime: DateTime(2023, 1, 6, 1, 0)),
        ShowItem(
            showName: 'Food Factory',
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
            showEndTime: DateTime(2023, 1, 6, 9, 30)),
        ShowItem(
            showName: 'Gold Rush The Movie',
            showStartTime: DateTime(2023, 1, 6, 9, 30),
            showEndTime: DateTime(2023, 1, 6, 9, 50)),
        ShowItem(
            showName: 'Gold Rush The Movie',
            showStartTime: DateTime(2023, 1, 6, 9, 50),
            showEndTime: DateTime(2023, 1, 6, 10, 50)),
        ShowItem(
            showName: 'Gold Rush The Movie',
            showStartTime: DateTime(2023, 1, 6, 10, 50),
            showEndTime: DateTime(2023, 1, 6, 11, 20)),
        ShowItem(
            showName: 'Gold Rush The Movie',
            showStartTime: DateTime(2023, 1, 6, 11, 20),
            showEndTime: DateTime(2023, 1, 6, 12, 00)),
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
      TvChannel(channelName: 'Discovery Beta', showItems: [
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
            showName: 'Gold Rush ',
            showStartTime: DateTime(2023, 1, 6, 12, 0),
            showEndTime: DateTime(2023, 1, 6, 13, 0)),
        ShowItem(
            showName: 'Street Outlaws',
            showStartTime: DateTime(2023, 1, 6, 13, 0),
            showEndTime: DateTime(2023, 1, 6, 13, 10)),
        ShowItem(
            showName: 'Street Outlaws',
            showStartTime: DateTime(2023, 1, 6, 13, 10),
            showEndTime: DateTime(2023, 1, 6, 14, 0)),
        ShowItem(
            showName: 'Street Outlaws',
            showStartTime: DateTime(2023, 1, 6, 14, 0),
            showEndTime: DateTime(2023, 1, 6, 14, 30)),
        ShowItem(
            showName: 'Street Outlaws',
            showStartTime: DateTime(2023, 1, 6, 14, 30),
            showEndTime: DateTime(2023, 1, 6, 15, 0)),
        ShowItem(
            showName: 'Sports',
            showStartTime: DateTime(2023, 1, 6, 15, 0),
            showEndTime: DateTime(2023, 1, 6, 17, 0)),
        ShowItem(
            showName: 'Sign off',
            showStartTime: DateTime(2023, 1, 6, 17, 0),
            showEndTime: DateTime(2023, 1, 6, 19, 0)),
        ShowItem(
            showName: 'Cricket',
            showStartTime: DateTime(2023, 1, 6, 19, 0),
            showEndTime: DateTime(2023, 1, 6, 20, 0)),
        ShowItem(
            showName: 'News',
            showStartTime: DateTime(2023, 1, 6, 20, 0),
            showEndTime: DateTime(2023, 1, 6, 20, 20)),
        ShowItem(
            showName: 'Road Kill',
            showStartTime: DateTime(2023, 1, 6, 20, 20),
            showEndTime: DateTime(2023, 1, 6, 21, 00)),
        ShowItem(
            showName: 'Shark Tank',
            showStartTime: DateTime(2023, 1, 6, 21, 0),
            showEndTime: DateTime(2023, 1, 6, 21, 30)),
        ShowItem(
            showName: 'Gold Rush Nine',
            showStartTime: DateTime(2023, 1, 6, 21, 30),
            showEndTime: DateTime(2023, 1, 6, 23, 59)),
      ]),
    ];
    showsList.shuffle();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Channel Widget'),
          backgroundColor: const Color(0xFFFF4500).withOpacity(0.8)),
      body: ChannelWidget(
        channelShows: showsList,
        moveToCurrentTime: true,
        itemHeight: 80,
        showTime: true,
        verticalPadding: 2,
        channelBuilder: (context, index) {
          final item = showsList[index];
          return Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color(0xFFFF4500).withOpacity(0.8)),
            child: Center(
                child: Text(
              item.channelName,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w400),
            )),
          );
        },
        showsBuilder: (context, show) {
          final channel = show;
          return Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.black12,
              ),
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(channel.showName,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w500)),
                  Text(
                      "${channel.showStartTime.difference(channel.showEndTime).inMinutes.abs()} Min",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w400)),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
