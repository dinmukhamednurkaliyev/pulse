import 'package:appearance/src/presentation/primitives/color_primitives.dart';
import 'package:flutter/material.dart';

@immutable
final class ColorTokens extends ThemeExtension<ColorTokens> {
  const ColorTokens._({
    required this.iconGrey,
    required this.iconLightGrey,
    required this.borderGrey,
    required this.borderLight,
    required this.shadowDark,
    required this.shadowLight,
    required this.shadowMedium,
    required this.socialBlue,
    required this.socialPink,
    required this.socialRed,
    required this.difficultyEasy,
    required this.difficultyHard,
    required this.difficultyMedium,
    required this.bottomNavigationBackground,
    required this.metricBackgroundBlue,
    required this.metricBackgroundGreen,
    required this.metricBackgroundOrange,
    required this.pillGreen,
    required this.pillOrange,
    required this.cardBackgroundBlue,
    required this.cardBackgroundOrange,
    required this.cardBackgroundRed,
    required this.cardBackgroundTeal,
    required this.cardBackgroundYellow,
    required this.text,
    required this.textWhite,
    required this.textPrimary,
    required this.textSecondary,
    required this.backgroundPrimary,
    required this.backgroundBlack,
    required this.backgroundWhite,
  });

  static const light = ColorTokens._(
    text: ColorPrimitives.grey900,
    textWhite: Colors.white,
    textPrimary: ColorPrimitives.grey800,
    textSecondary: ColorPrimitives.grey700,
    backgroundPrimary: ColorPrimitives.grey50,
    backgroundBlack: Colors.black,
    backgroundWhite: Colors.white,
    cardBackgroundBlue: ColorPrimitives.blue100,
    cardBackgroundOrange: ColorPrimitives.orange700,
    cardBackgroundRed: ColorPrimitives.red400,
    cardBackgroundTeal: ColorPrimitives.teal400,
    cardBackgroundYellow: ColorPrimitives.yellow400,
    pillGreen: ColorPrimitives.green100,
    pillOrange: ColorPrimitives.orange100,
    metricBackgroundGreen: ColorPrimitives.green100,
    metricBackgroundBlue: ColorPrimitives.blue100,
    metricBackgroundOrange: ColorPrimitives.orange100,
    bottomNavigationBackground: Colors.black,
    difficultyEasy: Colors.green,
    difficultyMedium: Colors.orange,
    difficultyHard: Colors.red,
    socialBlue: Colors.blue,
    socialPink: Colors.pink,
    socialRed: Colors.red,
    shadowDark: ColorPrimitives.opacity04,
    shadowLight: ColorPrimitives.opacity10,
    shadowMedium: ColorPrimitives.opacity20,
    borderGrey: ColorPrimitives.grey400,
    borderLight: ColorPrimitives.grey50,
    iconGrey: ColorPrimitives.grey700,
    iconLightGrey: ColorPrimitives.grey600,
  );

  final Color backgroundPrimary;
  final Color backgroundBlack;
  final Color backgroundWhite;
  final Color text;
  final Color textWhite;
  final Color textPrimary;
  final Color textSecondary;
  final Color cardBackgroundYellow;
  final Color cardBackgroundBlue;
  final Color cardBackgroundOrange;
  final Color cardBackgroundTeal;
  final Color cardBackgroundRed;
  final Color pillGreen;
  final Color pillOrange;
  final Color metricBackgroundGreen;
  final Color metricBackgroundBlue;
  final Color metricBackgroundOrange;
  final Color bottomNavigationBackground;
  final Color difficultyEasy;
  final Color difficultyMedium;
  final Color difficultyHard;
  final Color socialPink;
  final Color socialRed;
  final Color socialBlue;
  final Color shadowLight;
  final Color shadowMedium;
  final Color shadowDark;
  final Color borderLight;
  final Color borderGrey;
  final Color iconGrey;
  final Color iconLightGrey;

  @override
  ThemeExtension<ColorTokens> copyWith({
    Color? backgroundPrimary,
    Color? backgroundBlack,
    Color? backgroundWhite,
    Color? text,
    Color? textWhite,
    Color? textPrimary,
    Color? textSecondary,
    Color? cardPrimary,
    Color? cardSecondary,
    Color? cardYellow,
    Color? cardBlue,
    Color? cardOrange,
    Color? cardTeal,
    Color? cardRed,
    Color? pillGreen,
    Color? pillOrange,
    Color? metricBackgroundGreen,
    Color? metricBackgroundBlue,
    Color? metricBackgroundOrange,
    Color? bottomNavigationBackground,
    Color? difficultyEasy,
    Color? difficultyMedium,
    Color? difficultyHard,
    Color? socialPink,
    Color? socialRed,
    Color? socialBlue,
    Color? shadowLight,
    Color? shadowMedium,
    Color? shadowDark,
    Color? borderLight,
    Color? borderGrey,
    Color? iconGrey,
    Color? iconLightGrey,
  }) {
    return ColorTokens._(
      backgroundPrimary: backgroundPrimary ?? this.backgroundPrimary,
      backgroundBlack: backgroundBlack ?? this.backgroundBlack,
      backgroundWhite: backgroundWhite ?? this.backgroundWhite,
      text: text ?? this.text,
      textWhite: textWhite ?? this.textWhite,
      textPrimary: textPrimary ?? this.textPrimary,
      textSecondary: textSecondary ?? this.textSecondary,
      cardBackgroundYellow: cardYellow ?? cardBackgroundYellow,
      cardBackgroundBlue: cardBlue ?? cardBackgroundBlue,
      cardBackgroundOrange: cardOrange ?? cardBackgroundOrange,
      cardBackgroundTeal: cardTeal ?? cardBackgroundTeal,
      cardBackgroundRed: cardRed ?? cardBackgroundRed,
      pillGreen: pillGreen ?? this.pillGreen,
      pillOrange: pillOrange ?? this.pillOrange,
      metricBackgroundGreen:
          metricBackgroundGreen ?? this.metricBackgroundGreen,
      metricBackgroundBlue: metricBackgroundBlue ?? this.metricBackgroundBlue,
      metricBackgroundOrange:
          metricBackgroundOrange ?? this.metricBackgroundOrange,
      bottomNavigationBackground:
          bottomNavigationBackground ?? this.bottomNavigationBackground,
      difficultyEasy: difficultyEasy ?? this.difficultyEasy,
      difficultyMedium: difficultyMedium ?? this.difficultyMedium,
      difficultyHard: difficultyHard ?? this.difficultyHard,
      socialBlue: socialBlue ?? this.socialBlue,
      socialPink: socialPink ?? this.socialPink,
      socialRed: socialRed ?? this.socialRed,
      shadowLight: shadowLight ?? this.shadowLight,
      shadowMedium: shadowMedium ?? this.shadowMedium,
      shadowDark: shadowDark ?? this.shadowDark,
      borderLight: borderLight ?? this.borderLight,
      borderGrey: borderGrey ?? this.borderGrey,
      iconGrey: iconGrey ?? this.iconGrey,
      iconLightGrey: iconLightGrey ?? this.iconLightGrey,
    );
  }

  @override
  ThemeExtension<ColorTokens> lerp(
    covariant ThemeExtension<ColorTokens>? other,
    double t,
  ) {
    if (other is! ColorTokens) return this;
    return ColorTokens._(
      backgroundPrimary:
          Color.lerp(backgroundPrimary, other.backgroundPrimary, t) ??
          backgroundPrimary,
      backgroundBlack:
          Color.lerp(backgroundBlack, other.backgroundBlack, t) ??
          backgroundBlack,
      backgroundWhite:
          Color.lerp(backgroundWhite, other.backgroundWhite, t) ??
          backgroundWhite,
      text: Color.lerp(text, other.text, t) ?? text,
      textWhite: Color.lerp(textWhite, other.textWhite, t) ?? textWhite,
      textPrimary: Color.lerp(textPrimary, other.textPrimary, t) ?? textPrimary,
      textSecondary:
          Color.lerp(textSecondary, other.textSecondary, t) ?? textSecondary,
      cardBackgroundYellow:
          Color.lerp(cardBackgroundYellow, other.cardBackgroundYellow, t) ??
          cardBackgroundYellow,
      cardBackgroundBlue:
          Color.lerp(cardBackgroundBlue, other.cardBackgroundBlue, t) ??
          cardBackgroundBlue,
      cardBackgroundOrange:
          Color.lerp(cardBackgroundOrange, other.cardBackgroundOrange, t) ??
          cardBackgroundOrange,
      cardBackgroundTeal:
          Color.lerp(cardBackgroundTeal, other.cardBackgroundTeal, t) ??
          cardBackgroundTeal,
      cardBackgroundRed:
          Color.lerp(cardBackgroundRed, other.cardBackgroundRed, t) ??
          cardBackgroundRed,
      pillGreen: Color.lerp(pillGreen, other.pillGreen, t) ?? pillGreen,
      pillOrange: Color.lerp(pillOrange, other.pillOrange, t) ?? pillOrange,
      metricBackgroundGreen:
          Color.lerp(metricBackgroundGreen, other.metricBackgroundGreen, t) ??
          metricBackgroundGreen,
      metricBackgroundBlue:
          Color.lerp(metricBackgroundBlue, other.metricBackgroundBlue, t) ??
          metricBackgroundBlue,
      metricBackgroundOrange:
          Color.lerp(metricBackgroundOrange, other.metricBackgroundOrange, t) ??
          metricBackgroundOrange,
      bottomNavigationBackground:
          Color.lerp(
            bottomNavigationBackground,
            other.bottomNavigationBackground,
            t,
          ) ??
          bottomNavigationBackground,
      difficultyEasy:
          Color.lerp(difficultyEasy, other.difficultyEasy, t) ?? difficultyEasy,
      difficultyMedium:
          Color.lerp(difficultyMedium, other.difficultyMedium, t) ??
          difficultyMedium,
      difficultyHard:
          Color.lerp(difficultyHard, other.difficultyHard, t) ?? difficultyHard,
      socialBlue: Color.lerp(socialBlue, other.socialBlue, t) ?? socialBlue,
      socialPink: Color.lerp(socialPink, other.socialPink, t) ?? socialPink,
      socialRed: Color.lerp(socialRed, other.socialRed, t) ?? socialRed,
      shadowLight: Color.lerp(shadowLight, other.shadowLight, t) ?? shadowLight,
      shadowMedium:
          Color.lerp(shadowMedium, other.shadowMedium, t) ?? shadowMedium,
      shadowDark: Color.lerp(shadowDark, other.shadowDark, t) ?? shadowDark,
      borderLight: Color.lerp(borderLight, other.borderLight, t) ?? borderLight,
      borderGrey: Color.lerp(borderGrey, other.borderGrey, t) ?? borderGrey,
      iconGrey: Color.lerp(iconGrey, other.iconGrey, t) ?? iconGrey,
      iconLightGrey:
          Color.lerp(iconLightGrey, other.iconLightGrey, t) ?? iconLightGrey,
    );
  }
}

class GradientTokens extends ThemeExtension<GradientTokens> {
  const GradientTokens({
    required this.challengeCard,
  });
  static const regular = GradientTokens(
    challengeCard: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        ColorPrimitives.grey400,
        ColorPrimitives.grey200,
      ],
    ),
  );

  final Gradient challengeCard;

  @override
  ThemeExtension<GradientTokens> copyWith({
    Gradient? challengeCard,
  }) {
    return GradientTokens(
      challengeCard: challengeCard ?? this.challengeCard,
    );
  }

  @override
  ThemeExtension<GradientTokens> lerp(
    covariant ThemeExtension<GradientTokens>? other,
    double t,
  ) {
    if (other is! GradientTokens) return this;
    return GradientTokens(
      challengeCard:
          Gradient.lerp(challengeCard, other.challengeCard, t) ?? challengeCard,
    );
  }
}
