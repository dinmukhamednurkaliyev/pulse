import 'package:appearance/appearance.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:infrastructure/infrastructure.dart';
import 'package:pulse/application.dart';
import 'package:pulse/bootstrap.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final environment = kIsWeb ? DemoEnvironment() : ProductionEnvironment();
  await RiveNative.init();
  await bootstrap(
    () => environment.wrap(
      Application(environment: environment),
    ),
  );
}
