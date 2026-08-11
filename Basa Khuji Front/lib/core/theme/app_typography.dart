import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTypography {
  // Font families
  static const String fontFamilyEn = 'NotoSans';
  static const String fontFamilyBn = 'NotoSansBengali';

  // Light font weights
  static const FontWeight light = FontWeight.w300;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;
  static const FontWeight extraBold = FontWeight.w800;

  // Display styles (largest)
  static TextStyle displayLarge({
    bool useBengali = false,
  }) =>
      _style(
        fontSize: 57,
        fontWeight: regular,
        letterSpacing: -0.25,
        height: 1.12,
        useBengali: useBengali,
      );

  static TextStyle displayMedium({
    bool useBengali = false,
  }) =>
      _style(
        fontSize: 45,
        fontWeight: regular,
        letterSpacing: 0,
        height: 1.16,
        useBengali: useBengali,
      );

  static TextStyle displaySmall({
    bool useBengali = false,
  }) =>
      _style(
        fontSize: 36,
        fontWeight: regular,
        letterSpacing: 0,
        height: 1.22,
        useBengali: useBengali,
      );

  // Headline styles
  static TextStyle headlineLarge({
    bool useBengali = false,
  }) =>
      _style(
        fontSize: 32,
        fontWeight: regular,
        letterSpacing: 0,
        height: 1.25,
        useBengali: useBengali,
      );

  static TextStyle headlineMedium({
    bool useBengali = false,
  }) =>
      _style(
        fontSize: 28,
        fontWeight: regular,
        letterSpacing: 0,
        height: 1.29,
        useBengali: useBengali,
      );

  static TextStyle headlineSmall({
    bool useBengali = false,
  }) =>
      _style(
        fontSize: 24,
        fontWeight: regular,
        letterSpacing: 0,
        height: 1.33,
        useBengali: useBengali,
      );

  // Title styles
  static TextStyle titleLarge({
    bool useBengali = false,
  }) =>
      _style(
        fontSize: 22,
        fontWeight: medium,
        letterSpacing: 0,
        height: 1.27,
        useBengali: useBengali,
      );

  static TextStyle titleMedium({
    bool useBengali = false,
  }) =>
      _style(
        fontSize: 16,
        fontWeight: medium,
        letterSpacing: 0.15,
        height: 1.50,
        useBengali: useBengali,
      );

  static TextStyle titleSmall({
    bool useBengali = false,
  }) =>
      _style(
        fontSize: 14,
        fontWeight: medium,
        letterSpacing: 0.1,
        height: 1.43,
        useBengali: useBengali,
      );

  // Label styles
  static TextStyle labelLarge({
    bool useBengali = false,
  }) =>
      _style(
        fontSize: 14,
        fontWeight: medium,
        letterSpacing: 0.1,
        height: 1.43,
        useBengali: useBengali,
      );

  static TextStyle labelMedium({
    bool useBengali = false,
  }) =>
      _style(
        fontSize: 12,
        fontWeight: medium,
        letterSpacing: 0.5,
        height: 1.33,
        useBengali: useBengali,
      );

  static TextStyle labelSmall({
    bool useBengali = false,
  }) =>
      _style(
        fontSize: 11,
        fontWeight: medium,
        letterSpacing: 0.5,
        height: 1.45,
        useBengali: useBengali,
      );

  // Body styles
  static TextStyle bodyLarge({
    bool useBengali = false,
  }) =>
      _style(
        fontSize: 16,
        fontWeight: regular,
        letterSpacing: 0.15,
        height: 1.50,
        useBengali: useBengali,
      );

  static TextStyle bodyMedium({
    bool useBengali = false,
  }) =>
      _style(
        fontSize: 14,
        fontWeight: regular,
        letterSpacing: 0.25,
        height: 1.43,
        useBengali: useBengali,
      );

  static TextStyle bodySmall({
    bool useBengali = false,
  }) =>
      _style(
        fontSize: 12,
        fontWeight: regular,
        letterSpacing: 0.4,
        height: 1.33,
        useBengali: useBengali,
      );

  // Custom app styles
  static TextStyle appBarTitle({
    bool useBengali = false,
  }) =>
      _style(
        fontSize: 20,
        fontWeight: bold,
        letterSpacing: 0,
        height: 1.3,
        useBengali: useBengali,
      );

  static TextStyle propertyTitle({
    bool useBengali = false,
  }) =>
      _style(
        fontSize: 18,
        fontWeight: bold,
        letterSpacing: 0,
        height: 1.33,
        useBengali: useBengali,
      );

  static TextStyle propertyPrice({
    bool useBengali = false,
  }) =>
      _style(
        fontSize: 16,
        fontWeight: bold,
        letterSpacing: 0,
        height: 1.33,
        useBengali: useBengali,
      );

  static TextStyle propertyLocation({
    bool useBengali = false,
  }) =>
      _style(
        fontSize: 14,
        fontWeight: regular,
        letterSpacing: 0.25,
        height: 1.43,
        useBengali: useBengali,
      );

  static TextStyle propertyTag({
    bool useBengali = false,
  }) =>
      _style(
        fontSize: 12,
        fontWeight: medium,
        letterSpacing: 0.5,
        height: 1.33,
        useBengali: useBengali,
      );

  static TextStyle searchHint({
    bool useBengali = false,
  }) =>
      _style(
        fontSize: 14,
        fontWeight: regular,
        letterSpacing: 0.25,
        height: 1.43,
        useBengali: useBengali,
      );

  static TextStyle buttonText({
    bool useBengali = false,
  }) =>
      _style(
        fontSize: 14,
        fontWeight: medium,
        letterSpacing: 0.1,
        height: 1.43,
        useBengali: useBengali,
      );

  static TextStyle bottomNavLabel({
    bool useBengali = false,
  }) =>
      _style(
        fontSize: 10,
        fontWeight: medium,
        letterSpacing: 0.5,
        height: 1.4,
        useBengali: useBengali,
      );

  static TextStyle caption({
    bool useBengali = false,
  }) =>
      _style(
        fontSize: 12,
        fontWeight: regular,
        letterSpacing: 0.4,
        height: 1.33,
        useBengali: useBengali,
      );

  static TextStyle overline({
    bool useBengali = false,
  }) =>
      _style(
        fontSize: 10,
        fontWeight: medium,
        letterSpacing: 1.5,
        height: 1.6,
        useBengali: useBengali,
      );

  // Helper to build text style with Google Fonts
  // fontFamilyFallback is handled via TextStyle directly, not GoogleFonts.getFont
  static TextStyle _style({
    required double fontSize,
    required FontWeight fontWeight,
    required double letterSpacing,
    required double height,
    bool useBengali = false,
    Color? color,
  }) {
    final fontFamily = useBengali ? fontFamilyBn : fontFamilyEn;
    final fallback = useBengali ? fontFamilyEn : fontFamilyBn;
    return GoogleFonts.getFont(
      fontFamily,
      fontSize: fontSize,
      fontWeight: fontWeight,
      letterSpacing: letterSpacing,
      height: height,
      color: color,
    ).copyWith(fontFamilyFallback: [fallback]);
  }

  // Complete TextTheme for light theme
  static TextTheme lightTextTheme = TextTheme(
    displayLarge: displayLarge(),
    displayMedium: displayMedium(),
    displaySmall: displaySmall(),
    headlineLarge: headlineLarge(),
    headlineMedium: headlineMedium(),
    headlineSmall: headlineSmall(),
    titleLarge: titleLarge(),
    titleMedium: titleMedium(),
    titleSmall: titleSmall(),
    labelLarge: labelLarge(),
    labelMedium: labelMedium(),
    labelSmall: labelSmall(),
    bodyLarge: bodyLarge(),
    bodyMedium: bodyMedium(),
    bodySmall: bodySmall(),
  );

  // Complete TextTheme for dark theme (same sizes, different colors handled by theme)
  static TextTheme darkTextTheme = TextTheme(
    displayLarge: displayLarge(),
    displayMedium: displayMedium(),
    displaySmall: displaySmall(),
    headlineLarge: headlineLarge(),
    headlineMedium: headlineMedium(),
    headlineSmall: headlineSmall(),
    titleLarge: titleLarge(),
    titleMedium: titleMedium(),
    titleSmall: titleSmall(),
    labelLarge: labelLarge(),
    labelMedium: labelMedium(),
    labelSmall: labelSmall(),
    bodyLarge: bodyLarge(),
    bodyMedium: bodyMedium(),
    bodySmall: bodySmall(),
  );

  // Bengali-specific TextTheme (for when locale is Bengali)
  static TextTheme bengaliTextTheme = TextTheme(
    displayLarge: displayLarge(useBengali: true),
    displayMedium: displayMedium(useBengali: true),
    displaySmall: displaySmall(useBengali: true),
    headlineLarge: headlineLarge(useBengali: true),
    headlineMedium: headlineMedium(useBengali: true),
    headlineSmall: headlineSmall(useBengali: true),
    titleLarge: titleLarge(useBengali: true),
    titleMedium: titleMedium(useBengali: true),
    titleSmall: titleSmall(useBengali: true),
    labelLarge: labelLarge(useBengali: true),
    labelMedium: labelMedium(useBengali: true),
    labelSmall: labelSmall(useBengali: true),
    bodyLarge: bodyLarge(useBengali: true),
    bodyMedium: bodyMedium(useBengali: true),
    bodySmall: bodySmall(useBengali: true),
  );
}