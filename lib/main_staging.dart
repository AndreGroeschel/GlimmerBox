import 'package:glimmer_box/application/app.dart';
import 'package:glimmer_box/bootstrap.dart';
import 'package:logger/logger.dart';

void main() {
  Logger.level = Level.warning;
  bootstrap(() => const App());
}
