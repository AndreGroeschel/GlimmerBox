import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:glimmer_box/presentation/routes.dart';

extension PumpApp on WidgetTester {
  Future<void> pumpRealRouterApp(
    Widget Function(Widget child) builder,
  ) {
    return pumpWidget(
      builder(
        MaterialApp.router(
          routerConfig: appRouter,
        ),
      ),
    );
  }
}
