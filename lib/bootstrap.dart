import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:glimmer_box/infrastructure/logger/logger.dart';
import 'package:glimmer_box/injection_container.dart';

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  FlutterError.onError = (details) {
    appLogger.e(details.exceptionAsString(), stackTrace: details.stack);
  };

  // Add cross-flavor configuration here
  configureDependencies();

  runApp(await builder());
}
