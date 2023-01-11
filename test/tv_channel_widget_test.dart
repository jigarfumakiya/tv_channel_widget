import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tv_channel_widget/tv_channel_widget.dart';

import 'fixtures/constant.dart';

void main() {
  group('ChannelWidget', () {
    testWidgets("Check for conflicting shows", (tester) async {
      expect(() {
        ChannelWidget(
          channelShows: conflitingShowsList,
          channelBuilder: (context, index) {
            return const Text('Header');
          },
          showsBuilder: (context, show) {
            return Text(show.showName);
          },
        );
      }, throwsAssertionError);
    });
  });
}

Widget _wrapWithMaterialApp(Widget testWidget) {
  return MaterialApp(home: Scaffold(body: testWidget));
}
