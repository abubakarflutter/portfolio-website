// @dart=2.16

import 'dart:ui' as ui;

import 'package:abubakar_portfolio/main.dart' as entrypoint;

Future<void> main() async {
  await ui.webOnlyInitializePlatform();
  entrypoint.main();
}
