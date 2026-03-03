import 'package:appearance/appearance.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:infrastructure/infrastructure.dart';
import 'package:pulse/navigation/router.dart';

class Application extends StatefulWidget {
  const Application({required this.environment, super.key});

  final ApplicationEnvironment environment;

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  late final GoRouter _router = buildRouter();

  @override
  Widget build(BuildContext context) {
    final theme = buildTheme();
    return MaterialApp.router(
      title: 'Pulse',
      builder: widget.environment.builder,
      scrollBehavior: widget.environment.scrollBehavior,
      locale: widget.environment.locale,
      debugShowCheckedModeBanner: false,
      theme: theme,
      routerConfig: _router,
    );
  }
}
