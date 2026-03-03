import 'dart:ui';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

abstract class ApplicationEnvironment {
  Widget wrap(Widget application);
  TransitionBuilder? get builder;
  Locale? get locale;
  ScrollBehavior? get scrollBehavior;
}

class DemoEnvironment implements ApplicationEnvironment {
  @override
  Widget wrap(Widget application) => DevicePreview(
    enabled: kIsWeb,
    builder: (context) => application,
  );

  @override
  TransitionBuilder? get builder => DevicePreview.appBuilder;

  @override
  Locale? get locale => null;

  @override
  ScrollBehavior? get scrollBehavior => _WebScrollBehavior();
}

class ProductionEnvironment implements ApplicationEnvironment {
  @override
  Widget wrap(Widget application) => application;

  @override
  TransitionBuilder? get builder => null;

  @override
  Locale? get locale => null;

  @override
  ScrollBehavior? get scrollBehavior => null;
}

class _WebScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
    PointerDeviceKind.trackpad,
  };
}
