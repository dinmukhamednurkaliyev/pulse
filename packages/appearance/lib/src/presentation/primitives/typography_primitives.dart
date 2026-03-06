import 'package:flutter/material.dart';

@immutable
abstract final class TypographyPrimitives {
  const TypographyPrimitives._();

  static const fontFamily = 'Inter';
  static const TextLeadingDistribution leading =
      TextLeadingDistribution.proportional;

  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;

  static const double s11 = 11;
  static const double s12 = 12;
  static const double s14 = 14;
  static const double s16 = 16;
  static const double s22 = 22;
  static const double s24 = 24;
  static const double s28 = 28;
  static const double s32 = 32;
  static const double s36 = 36;
  static const double s45 = 45;
  static const double s57 = 57;
}
