import 'package:appearance/appearance.dart';
import 'package:flutter/material.dart';
import 'package:pulse/application.dart';
import 'package:pulse/bootstrap.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await RiveNative.init();
  await bootstrap(() => const Application());
}
