import 'package:flutter/material.dart';

Widget makeTestableWidget(Widget widgetForWrapping) => MaterialApp(
      home: Scaffold(
        body: widgetForWrapping,
      ),
    );
