// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:friflex_weather_app/main.dart';
import 'package:friflex_weather_app/presentation/screens/city_input_page.dart';

import '../helpers/make_testable_widget.dart';

void main() {
  testWidgets('Finding text on screen', (WidgetTester tester) async {
    await tester.pumpWidget(
      makeTestableWidget(
        const CityInputTextField(),
      ),
    );

    expect(find.text('Узнать погоду в городе:'), findsOneWidget);
    expect(find.text('Х'), findsNothing);
  });
}
