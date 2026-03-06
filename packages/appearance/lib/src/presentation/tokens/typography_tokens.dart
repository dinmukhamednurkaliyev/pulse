import 'package:appearance/src/presentation/primitives/typography_primitives.dart';
import 'package:flutter/material.dart';

@immutable
final class TypographyTokens extends ThemeExtension<TypographyTokens> {
  const TypographyTokens._({
    required this.displayLarge,
    required this.displayMedium,
    required this.displaySmall,
    required this.headlineLarge,
    required this.headlineMedium,
    required this.headlineSmall,
    required this.titleLarge,
    required this.titleMedium,
    required this.titleSmall,
    required this.bodyLarge,
    required this.bodyMedium,
    required this.bodySmall,
    required this.labelLarge,
    required this.labelMedium,
    required this.labelSmall,
  });

  final TextStyle displayLarge;
  final TextStyle displayMedium;
  final TextStyle displaySmall;
  final TextStyle headlineLarge;
  final TextStyle headlineMedium;
  final TextStyle headlineSmall;
  final TextStyle titleLarge;
  final TextStyle titleMedium;
  final TextStyle titleSmall;
  final TextStyle bodyLarge;
  final TextStyle bodyMedium;
  final TextStyle bodySmall;
  final TextStyle labelLarge;
  final TextStyle labelMedium;
  final TextStyle labelSmall;

  static const regular = TypographyTokens._(
    displayLarge: TextStyle(
      fontFamily: TypographyPrimitives.fontFamily,
      leadingDistribution: TypographyPrimitives.leading,
      fontSize: TypographyPrimitives.s57,
      fontWeight: TypographyPrimitives.regular,
      height: 1.12,
      letterSpacing: -0.25,
    ),
    displayMedium: TextStyle(
      fontFamily: TypographyPrimitives.fontFamily,
      leadingDistribution: TypographyPrimitives.leading,
      fontSize: TypographyPrimitives.s45,
      fontWeight: TypographyPrimitives.regular,
      height: 1.15,
    ),
    displaySmall: TextStyle(
      fontFamily: TypographyPrimitives.fontFamily,
      leadingDistribution: TypographyPrimitives.leading,
      fontSize: TypographyPrimitives.s36,
      fontWeight: TypographyPrimitives.regular,
      height: 1.22,
    ),

    headlineLarge: TextStyle(
      fontFamily: TypographyPrimitives.fontFamily,
      leadingDistribution: TypographyPrimitives.leading,
      fontSize: TypographyPrimitives.s32,
      fontWeight: TypographyPrimitives.semiBold,
      height: 1.25,
    ),
    headlineMedium: TextStyle(
      fontFamily: TypographyPrimitives.fontFamily,
      leadingDistribution: TypographyPrimitives.leading,
      fontSize: TypographyPrimitives.s28,
      fontWeight: TypographyPrimitives.semiBold,
      height: 1.28,
    ),
    headlineSmall: TextStyle(
      fontFamily: TypographyPrimitives.fontFamily,
      leadingDistribution: TypographyPrimitives.leading,
      fontSize: TypographyPrimitives.s24,
      fontWeight: TypographyPrimitives.semiBold,
      height: 1.33,
    ),

    titleLarge: TextStyle(
      fontFamily: TypographyPrimitives.fontFamily,
      leadingDistribution: TypographyPrimitives.leading,
      fontSize: TypographyPrimitives.s22,
      fontWeight: TypographyPrimitives.bold,
      height: 1.27,
    ),
    titleMedium: TextStyle(
      fontFamily: TypographyPrimitives.fontFamily,
      leadingDistribution: TypographyPrimitives.leading,
      fontSize: TypographyPrimitives.s16,
      fontWeight: TypographyPrimitives.bold,
      height: 1.5,
      letterSpacing: 0.15,
    ),
    titleSmall: TextStyle(
      fontFamily: TypographyPrimitives.fontFamily,
      leadingDistribution: TypographyPrimitives.leading,
      fontSize: TypographyPrimitives.s14,
      fontWeight: TypographyPrimitives.bold,
      height: 1.43,
      letterSpacing: 0.1,
    ),

    bodyLarge: TextStyle(
      fontFamily: TypographyPrimitives.fontFamily,
      leadingDistribution: TypographyPrimitives.leading,
      fontSize: TypographyPrimitives.s16,
      fontWeight: TypographyPrimitives.medium,
      height: 1.5,
      letterSpacing: 0.5,
    ),
    bodyMedium: TextStyle(
      fontFamily: TypographyPrimitives.fontFamily,
      leadingDistribution: TypographyPrimitives.leading,
      fontSize: TypographyPrimitives.s14,
      fontWeight: TypographyPrimitives.medium,
      height: 1.43,
      letterSpacing: 0.25,
    ),
    bodySmall: TextStyle(
      fontFamily: TypographyPrimitives.fontFamily,
      leadingDistribution: TypographyPrimitives.leading,
      fontSize: TypographyPrimitives.s12,
      fontWeight: TypographyPrimitives.medium,
      height: 1.33,
      letterSpacing: 0.4,
    ),

    labelLarge: TextStyle(
      fontFamily: TypographyPrimitives.fontFamily,
      leadingDistribution: TypographyPrimitives.leading,
      fontSize: TypographyPrimitives.s14,
      fontWeight: TypographyPrimitives.semiBold,
      height: 1.43,
      letterSpacing: 0.1,
    ),
    labelMedium: TextStyle(
      fontFamily: TypographyPrimitives.fontFamily,
      leadingDistribution: TypographyPrimitives.leading,
      fontSize: TypographyPrimitives.s12,
      fontWeight: TypographyPrimitives.semiBold,
      height: 1.33,
      letterSpacing: 0.5,
    ),
    labelSmall: TextStyle(
      fontFamily: TypographyPrimitives.fontFamily,
      leadingDistribution: TypographyPrimitives.leading,
      fontSize: TypographyPrimitives.s11,
      fontWeight: TypographyPrimitives.semiBold,
      height: 1.45,
      letterSpacing: 0.5,
    ),
  );

  @override
  ThemeExtension<TypographyTokens> copyWith({
    TextStyle? displayLarge,
    TextStyle? displayMedium,
    TextStyle? displaySmall,
    TextStyle? headlineLarge,
    TextStyle? headlineMedium,
    TextStyle? headlineSmall,
    TextStyle? titleLarge,
    TextStyle? titleMedium,
    TextStyle? titleSmall,
    TextStyle? bodyLarge,
    TextStyle? bodyMedium,
    TextStyle? bodySmall,
    TextStyle? labelLarge,
    TextStyle? labelMedium,
    TextStyle? labelSmall,
  }) {
    return TypographyTokens._(
      displayLarge: displayLarge ?? this.displayLarge,
      displayMedium: displayMedium ?? this.displayMedium,
      displaySmall: displaySmall ?? this.displaySmall,
      headlineLarge: headlineLarge ?? this.headlineLarge,
      headlineMedium: headlineMedium ?? this.headlineMedium,
      headlineSmall: headlineSmall ?? this.headlineSmall,
      titleLarge: titleLarge ?? this.titleLarge,
      titleMedium: titleMedium ?? this.titleMedium,
      titleSmall: titleSmall ?? this.titleSmall,
      bodyLarge: bodyLarge ?? this.bodyLarge,
      bodyMedium: bodyMedium ?? this.bodyMedium,
      bodySmall: bodySmall ?? this.bodySmall,
      labelLarge: labelLarge ?? this.labelLarge,
      labelMedium: labelMedium ?? this.labelMedium,
      labelSmall: labelSmall ?? this.labelSmall,
    );
  }

  @override
  ThemeExtension<TypographyTokens> lerp(
    covariant ThemeExtension<TypographyTokens>? other,
    double t,
  ) {
    if (other is! TypographyTokens) return this;
    return TypographyTokens._(
      displayLarge: TextStyle.lerp(displayLarge, other.displayLarge, t)!,
      displayMedium: TextStyle.lerp(displayMedium, other.displayMedium, t)!,
      displaySmall: TextStyle.lerp(displaySmall, other.displaySmall, t)!,
      headlineLarge: TextStyle.lerp(headlineLarge, other.headlineLarge, t)!,
      headlineMedium: TextStyle.lerp(headlineMedium, other.headlineMedium, t)!,
      headlineSmall: TextStyle.lerp(headlineSmall, other.headlineSmall, t)!,
      titleLarge: TextStyle.lerp(titleLarge, other.titleLarge, t)!,
      titleMedium: TextStyle.lerp(titleMedium, other.titleMedium, t)!,
      titleSmall: TextStyle.lerp(titleSmall, other.titleSmall, t)!,
      bodyLarge: TextStyle.lerp(bodyLarge, other.bodyLarge, t)!,
      bodyMedium: TextStyle.lerp(bodyMedium, other.bodyMedium, t)!,
      bodySmall: TextStyle.lerp(bodySmall, other.bodySmall, t)!,
      labelLarge: TextStyle.lerp(labelLarge, other.labelLarge, t)!,
      labelMedium: TextStyle.lerp(labelMedium, other.labelMedium, t)!,
      labelSmall: TextStyle.lerp(labelSmall, other.labelSmall, t)!,
    );
  }
}

extension TypographyExtension on TextStyle {
  TextStyle withColor(Color color) => copyWith(color: color);
  TextStyle withHeight(double height) => copyWith(height: height);
  TextStyle get regular => copyWith(fontWeight: FontWeight.w400);
  TextStyle get medium => copyWith(fontWeight: FontWeight.w500);
  TextStyle get semiBold => copyWith(fontWeight: FontWeight.w600);
  TextStyle get bold => copyWith(fontWeight: FontWeight.w700);
}
