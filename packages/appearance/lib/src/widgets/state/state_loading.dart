import 'package:flutter/material.dart';

class StateLoading extends StatelessWidget {
  const StateLoading({super.key});

  @override
  Widget build(BuildContext context) => const Center(
    child: CircularProgressIndicator.adaptive(),
  );
}
