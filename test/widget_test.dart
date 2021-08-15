// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pipelist/main.dart';

void main() {
  testWidgets('AppWidget has a floating action button',
      (WidgetTester tester) async {
    final app = AppWidget();

    await tester.pumpWidget(app);

    expect(find.byIcon(Icons.add_rounded), findsOneWidget);
  });

  testWidgets('AppWidget has a bottom navigation bar with three pages',
      (WidgetTester tester) async {
    final app = AppWidget();

    await tester.pumpWidget(app);

    expect(find.byIcon(Icons.inbox_rounded), findsOneWidget);
    expect(find.byIcon(Icons.collections_bookmark_rounded), findsOneWidget);
    expect(find.byIcon(Icons.visibility_rounded), findsOneWidget);
  });
}
