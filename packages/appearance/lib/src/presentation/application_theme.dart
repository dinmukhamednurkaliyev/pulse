import 'package:appearance/src/presentation/tokens/color_tokens.dart';
import 'package:appearance/src/presentation/tokens/layout_tokens.dart';
import 'package:appearance/src/presentation/tokens/typography_tokens.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// TODO: Remove this class
ThemeData buildTheme() {
  final base = ThemeData(
    useMaterial3: true,
    colorSchemeSeed: ColorTokens.light.cardBackgroundBlue,
    textTheme: const TextTheme(),
    extensions: const <ThemeExtension<dynamic>>[
      TypographyTokens.regular,
      ColorTokens.light,
      GradientTokens.regular,
      LayoutTokens.regular,
    ],
  );

  return base.copyWith(
    scaffoldBackgroundColor: ColorTokens.light.backgroundPrimary,
    textTheme: base.textTheme.apply(
      bodyColor: ColorTokens.light.textPrimary,
      displayColor: ColorTokens.light.textPrimary,
    ),
    cardTheme: CardThemeData(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(LayoutTokens.regular.md),
        ),
      ),
    ),
  );
}

// TODO: Use this class to build themes
abstract final class ApplicationTheme {
  const ApplicationTheme._();

  static ThemeData light() => _build(
    brightness: Brightness.light,
    colors: ColorTokens.light,
    layout: LayoutTokens.regular,
    typography: TypographyTokens.regular,
    gradients: GradientTokens.regular,
  );

  static ThemeData dark() => _build(
    brightness: Brightness.dark,
    colors: ColorTokens.light,
    layout: LayoutTokens.regular,
    typography: TypographyTokens.regular,
    gradients: GradientTokens.regular,
  );

  static ThemeData _build({
    required Brightness brightness,
    required ColorTokens colors,
    required LayoutTokens layout,
    required TypographyTokens typography,
    required GradientTokens gradients,
  }) {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: colors.backgroundBlack,
      brightness: brightness,
      primary: colors.backgroundBlack,
      onPrimary: colors.textWhite,
      surface: colors.backgroundPrimary,
      onSurface: colors.textPrimary,
      error: colors.socialRed,
      outline: colors.borderGrey,
    );

    final base = ThemeData(
      useMaterial3: true,
      brightness: brightness,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: colors.backgroundPrimary,
      extensions: <ThemeExtension<dynamic>>[
        colors,
        layout,
        typography,
        gradients,
      ],
    );

    return base.copyWith(
      textTheme: _buildMaterialTextTheme(base.textTheme, typography, colors),

      cardTheme: CardThemeData(
        elevation: 0,
        color: colors.backgroundWhite,
        surfaceTintColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: colors.borderLight, width: layout.strokeThin),
          borderRadius: BorderRadius.all(
            Radius.circular(layout.md),
          ),
        ),
      ),

      appBarTheme: AppBarThemeData(
        backgroundColor: colors.backgroundPrimary,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: typography.titleLarge.copyWith(
          color: colors.textPrimary,
        ),
        iconTheme: IconThemeData(color: colors.iconGrey),
        systemOverlayStyle: brightness == Brightness.light
            ? SystemUiOverlayStyle.dark
            : SystemUiOverlayStyle.light,
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colors.backgroundBlack,
          foregroundColor: colors.textWhite,
          elevation: 0,
          textStyle: typography.labelLarge,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(layout.sm),
          ),
        ),
      ),

      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: colors.bottomNavigationBackground,
        selectedItemColor: colors.textWhite,
        unselectedItemColor: colors.iconLightGrey,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
      ),

      dividerTheme: DividerThemeData(
        color: colors.borderGrey,
        thickness: layout.strokeThin,
        space: layout.md,
      ),
    );
  }

  static TextTheme _buildMaterialTextTheme(
    TextTheme base,
    TypographyTokens tokens,
    ColorTokens colors,
  ) {
    final color = colors.textPrimary;
    return base.copyWith(
      displayLarge: tokens.displayLarge.copyWith(color: color),
      displayMedium: tokens.displayMedium.copyWith(color: color),
      displaySmall: tokens.displaySmall.copyWith(color: color),
      headlineLarge: tokens.headlineLarge.copyWith(color: color),
      headlineMedium: tokens.headlineMedium.copyWith(color: color),
      headlineSmall: tokens.headlineSmall.copyWith(color: color),
      titleLarge: tokens.titleLarge.copyWith(color: color),
      titleMedium: tokens.titleMedium.copyWith(color: color),
      titleSmall: tokens.titleSmall.copyWith(color: color),
      bodyLarge: tokens.bodyLarge.copyWith(color: color),
      bodyMedium: tokens.bodyMedium.copyWith(color: color),
      bodySmall: tokens.bodySmall.copyWith(color: color),
      labelLarge: tokens.labelLarge.copyWith(color: color),
      labelMedium: tokens.labelMedium.copyWith(color: color),
      labelSmall: tokens.labelSmall.copyWith(color: color),
    );
  }
}

extension ThemeContext on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => Theme.of(this).textTheme;
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
}
