import 'package:appearance/src/presentation/tokens/color_tokens.dart';
import 'package:appearance/src/presentation/tokens/layout_tokens.dart';
import 'package:appearance/src/presentation/tokens/typography_tokens.dart';
import 'package:flutter/material.dart';

@immutable
final class AppearanceSystem {
  const AppearanceSystem(this._context);
  final BuildContext _context;
  ColorTokens get color => Theme.of(_context).extension<ColorTokens>()!;
  LayoutTokens get layout => Theme.of(_context).extension<LayoutTokens>()!;
  TypographyTokens get typography =>
      Theme.of(_context).extension<TypographyTokens>()!;
}

extension AppearanceExtension on BuildContext {
  AppearanceSystem get style => AppearanceSystem(this);
}
