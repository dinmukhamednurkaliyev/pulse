import 'package:flutter/material.dart';

@immutable
abstract final class ColorPrimitives {
  const ColorPrimitives._();

  static const Color grey50 = Color(0xFFF2EEF9);
  //static const Color grey100 = Color(0xFFF0F0F0);
  static const Color grey200 = Color(0xFFF0EBF7);
  //static const Color grey300 = Color(0xFFE0E0E0);
  static const Color grey400 = Color(0xFFE8E2F3);
  //static const Color grey500 = Color(0xFFCCCCCC);
  static const Color grey600 = Color(0x4D999999);
  static const Color grey700 = Color(0xFF666666);
  static const Color grey800 = Color(0xFF1A1A1A);
  static const Color grey900 = Color(0xFF0F1115);

  static const Color opacity04 = Color(0x0A000000);
  static const Color opacity10 = Color(0x1A000000);
  static const Color opacity20 = Color(0x33000000);

  static const Color blue100 = Color(0xFFBBD2FF);
  static const Color yellow400 = Color(0xFFFFC85D);
  static const Color green100 = Color(0xFFCFF2D8);
  static const Color orange100 = Color(0xFFFFEED6);
  static const Color orange700 = Color(0xFFFF6B35);
  static const Color red400 = Color(0xFFFF6B6B);
  static const Color teal400 = Color(0xFF4ECDC4);
}
