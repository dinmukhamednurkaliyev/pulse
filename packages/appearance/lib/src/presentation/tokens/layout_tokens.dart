import 'dart:ui';

import 'package:appearance/src/presentation/primitives/layout_primitives.dart';
import 'package:flutter/material.dart';

@immutable
final class LayoutTokens extends ThemeExtension<LayoutTokens> {
  const LayoutTokens._({
    required this.none,
    required this.xxxs,
    required this.xxs,
    required this.xs,
    required this.sm,
    required this.md,
    required this.lg,
    required this.xl,
    required this.xxl,
    required this.xxxl,
    required this.strokeThin,
    required this.strokeThick,
  });

  static const regular = LayoutTokens._(
    none: LayoutPrimitives.s0,
    xxxs: LayoutPrimitives.s4,
    xxs: LayoutPrimitives.s8,
    xs: LayoutPrimitives.s12,
    sm: LayoutPrimitives.s16,
    md: LayoutPrimitives.s20,
    lg: LayoutPrimitives.s24,
    xl: LayoutPrimitives.s28,
    xxl: LayoutPrimitives.s32,
    xxxl: LayoutPrimitives.s36,
    strokeThin: LayoutPrimitives.strokeThin,
    strokeThick: LayoutPrimitives.strokeThick,
  );

  final double none;
  final double xxxs;
  final double xxs;
  final double xs;
  final double sm;
  final double md;
  final double lg;
  final double xl;
  final double xxl;
  final double xxxl;
  final double strokeThin;
  final double strokeThick;

  @override
  LayoutTokens copyWith({
    double? none,
    double? xxxs,
    double? xxs,
    double? xs,
    double? sm,
    double? md,
    double? lg,
    double? xl,
    double? xxl,
    double? xxxl,
    double? strokeThin,
    double? strokeThick,
  }) {
    return LayoutTokens._(
      none: none ?? this.none,
      xxxs: xxxs ?? this.xxxs,
      xxs: xxs ?? this.xxs,
      xs: xs ?? this.xs,
      sm: sm ?? this.sm,
      md: md ?? this.md,
      lg: lg ?? this.lg,
      xl: xl ?? this.xl,
      xxl: xxl ?? this.xxl,
      xxxl: xxxl ?? this.xxxl,
      strokeThin: strokeThin ?? this.strokeThin,
      strokeThick: strokeThick ?? this.strokeThick,
    );
  }

  @override
  LayoutTokens lerp(ThemeExtension<LayoutTokens>? other, double t) {
    if (other is! LayoutTokens) return this;
    return LayoutTokens._(
      none: lerpDouble(none, other.none, t)!,
      xxxs: lerpDouble(xxxs, other.xxxs, t)!,
      xxs: lerpDouble(xxs, other.xxs, t)!,
      xs: lerpDouble(xs, other.xs, t)!,
      sm: lerpDouble(sm, other.sm, t)!,
      md: lerpDouble(md, other.md, t)!,
      lg: lerpDouble(lg, other.lg, t)!,
      xl: lerpDouble(xl, other.xl, t)!,
      xxl: lerpDouble(xxl, other.xxl, t)!,
      xxxl: lerpDouble(xxxl, other.xxxl, t)!,
      strokeThin: lerpDouble(strokeThin, other.strokeThin, t)!,
      strokeThick: lerpDouble(strokeThick, other.strokeThick, t)!,
    );
  }
}
