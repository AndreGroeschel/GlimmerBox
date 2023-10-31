import 'package:glimmer_box/bootstrap.dart';
import 'package:glimmer_box/presentation/app.dart';
import 'package:logger/logger.dart';

void main() {
  Logger.level = Level.all;
  bootstrap(() => const App());
}
