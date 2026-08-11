import 'package:flutter/material.dart';

class AppColors {
  // Primary - Your brand red
  static const Color primary = Color(0xFFF44336);
  static const Color primaryContainer = Color(0xFFFFEBEE);
  static const Color onPrimary = Colors.white;
  static const Color onPrimaryContainer = Color(0xFFB71C1C);

  // Secondary - Blue for actions
  static const Color secondary = Color(0xFF1976D2);
  static const Color secondaryContainer = Color(0xFFE3F2FD);
  static const Color onSecondary = Colors.white;
  static const Color onSecondaryContainer = Color(0xFF0D47A1);

  // Tertiary - Green for price/positive
  static const Color tertiary = Color(0xFF388E3C);
  static const Color tertiaryContainer = Color(0xFFE8F5E9);
  static const Color onTertiary = Colors.white;
  static const Color onTertiaryContainer = Color(0xFF1B5E20);

  // Error
  static const Color error = Color(0xFFD32F2F);
  static const Color errorContainer = Color(0xFFFFEBEE);
  static const Color onError = Colors.white;
  static const Color onErrorContainer = Color(0xFFB71C1C);

  // Surface
  static const Color surface = Colors.white;
  static const Color surfaceDim = Color(0xFFF5F5F5);
  static const Color surfaceBright = Colors.white;
  static const Color surfaceContainer = Color(0xFFF5F5F5);
  static const Color surfaceContainerHigh = Color(0xFFEEEEEE);
  static const Color surfaceContainerHighest = Color(0xFFE0E0E0);
  static const Color onSurface = Color(0xFF1C1B1F);
  static const Color onSurfaceVariant = Color(0xFF49454F);

  // Outline
  static const Color outline = Color(0xFF79747E);
  static const Color outlineVariant = Color(0xFFCAC4D0);

  // Inverse
  static const Color inverseSurface = Color(0xFF313033);
  static const Color inversePrimary = Color(0xFFFFB4AB);

  // Shadow
  static const Color shadow = Color(0xFF000000);
  static const Color scrim = Color(0xFF000000);

  // Semantic colors
  static const Color pricePositive = Color(0xFF388E3C);
  static const Color priceNegative = Color(0xFFD32F2F);
  static const Color warning = Color(0xFFF57C00);
  static const Color info = Color(0xFF1976D2);
  static const Color success = Color(0xFF388E3C);

  // Divider
  static const Color divider = Color(0xFFE0E0E0);

  // Bottom nav
  static const Color bottomNavBackground = Color(0xFFF8F8F8);
  static const Color bottomNavActive = Color(0xFFF44336);
  static const Color bottomNavInactive = Color(0xFF757575);

  // Search bar
  static const Color searchBarBackground = Colors.white;
  static const Color searchBarBorder = Color(0xFFE0E0E0);
  static const Color searchBarFocusedBorder = Color(0xFFF44336);

  // Card
  static const Color cardBackground = Colors.white;
  static const Color cardShadow = Color(0x1A000000);

  // Tags/Chips
  static const Color chipBackground = Color(0xFFE0E0E0);
  static const Color chipSelectedBackground = Color(0xFFF44336);
  static const Color chipText = Color(0xFF333333);
  static const Color chipSelectedText = Colors.white;

  // Text
  static const Color textPrimary = Color(0xFF212121);
  static const Color textSecondary = Color(0xFF757575);
  static const Color textHint = Color(0xFF9E9E9E);
  static const Color textDisabled = Color(0xFFBDBDBD);

  // Dark mode colors
  static const Color darkPrimary = Color(0xFFEF5350);
  static const Color darkPrimaryContainer = Color(0xFF7F2727);
  static const Color darkOnPrimary = Colors.white;
  static const Color darkOnPrimaryContainer = Color(0xFFFFDAD6);

  static const Color darkSecondary = Color(0xFF90CAF9);
  static const Color darkSecondaryContainer = Color(0xFF1A237E);
  static const Color darkOnSecondary = Color(0xFF000000);
  static const Color darkOnSecondaryContainer = Color(0xFFE3F2FD);

  static const Color darkTertiary = Color(0xFF81C784);
  static const Color darkTertiaryContainer = Color(0xFF1B5E20);
  static const Color darkOnTertiary = Color(0xFF000000);
  static const Color darkOnTertiaryContainer = Color(0xFFE8F5E9);

  static const Color darkError = Color(0xFFEF9A9A);
  static const Color darkErrorContainer = Color(0xFF7F2727);
  static const Color darkOnError = Color(0xFF000000);
  static const Color darkOnErrorContainer = Color(0xFFFFDAD6);

  static const Color darkSurface = Color(0xFF1E1E1E);
  static const Color darkSurfaceDim = Color(0xFF121212);
  static const Color darkSurfaceBright = Color(0xFF2C2C2C);
  static const Color darkSurfaceContainer = Color(0xFF2C2C2C);
  static const Color darkSurfaceContainerHigh = Color(0xFF383838);
  static const Color darkSurfaceContainerHighest = Color(0xFF424242);
  static const Color darkOnSurface = Color(0xFFE6E1E5);
  static const Color darkOnSurfaceVariant = Color(0xFFCAC4D0);

  static const Color darkOutline = Color(0xFF938F99);
  static const Color darkOutlineVariant = Color(0xFF49454F);

  static const Color darkInverseSurface = Color(0xFFE6E1E5);
  static const Color darkInversePrimary = Color(0xFFF44336);

  static const Color darkShadow = Color(0xFF000000);
  static const Color darkScrim = Color(0xFF000000);

  static const Color darkDivider = Color(0xFF424242);
  static const Color darkBottomNavBackground = Color(0xFF1E1E1E);
  static const Color darkBottomNavActive = Color(0xFFEF5350);
  static const Color darkBottomNavInactive = Color(0xFF9E9E9E);

  static const Color darkSearchBarBackground = Color(0xFF2C2C2C);
  static const Color darkSearchBarBorder = Color(0xFF424242);
  static const Color darkSearchBarFocusedBorder = Color(0xFFEF5350);

  static const Color darkCardBackground = Color(0xFF1E1E1E);
  static const Color darkCardShadow = Color(0x33000000);

  static const Color darkChipBackground = Color(0xFF383838);
  static const Color darkChipSelectedBackground = Color(0xFFEF5350);
  static const Color darkChipText = Color(0xFFE0E0E0);
  static const Color darkChipSelectedText = Colors.white;

  static const Color darkTextPrimary = Color(0xFFFFFFFF);
  static const Color darkTextSecondary = Color(0xFFBDBDBD);
  static const Color darkTextHint = Color(0xFF9E9E9E);
  static const Color darkTextDisabled = Color(0xFF757575);

  // Light ColorScheme (Flutter 3.12+ compatible)
  static const ColorScheme lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: primary,
    primaryContainer: primaryContainer,
    onPrimary: onPrimary,
    onPrimaryContainer: onPrimaryContainer,
    secondary: secondary,
    secondaryContainer: secondaryContainer,
    onSecondary: onSecondary,
    onSecondaryContainer: onSecondaryContainer,
    tertiary: tertiary,
    tertiaryContainer: tertiaryContainer,
    onTertiary: onTertiary,
    onTertiaryContainer: onTertiaryContainer,
    error: error,
    errorContainer: errorContainer,
    onError: onError,
    onErrorContainer: onErrorContainer,
    surface: surface,
    surfaceDim: surfaceDim,
    surfaceBright: surfaceBright,
    surfaceContainer: surfaceContainer,
    surfaceContainerHigh: surfaceContainerHigh,
    surfaceContainerHighest: surfaceContainerHighest,
    onSurface: onSurface,
    onSurfaceVariant: onSurfaceVariant,
    outline: outline,
    outlineVariant: outlineVariant,
    inverseSurface: inverseSurface,
    inversePrimary: inversePrimary,
    shadow: shadow,
    scrim: scrim,
    surfaceTint: primary,
  );

  // Dark ColorScheme (Flutter 3.12+ compatible)
  static const ColorScheme darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: darkPrimary,
    primaryContainer: darkPrimaryContainer,
    onPrimary: darkOnPrimary,
    onPrimaryContainer: darkOnPrimaryContainer,
    secondary: darkSecondary,
    secondaryContainer: darkSecondaryContainer,
    onSecondary: darkOnSecondary,
    onSecondaryContainer: darkOnSecondaryContainer,
    tertiary: darkTertiary,
    tertiaryContainer: darkTertiaryContainer,
    onTertiary: darkOnTertiary,
    onTertiaryContainer: darkOnTertiaryContainer,
    error: darkError,
    errorContainer: darkErrorContainer,
    onError: darkOnError,
    onErrorContainer: darkOnErrorContainer,
    surface: darkSurface,
    surfaceDim: darkSurfaceDim,
    surfaceBright: darkSurfaceBright,
    surfaceContainer: darkSurfaceContainer,
    surfaceContainerHigh: darkSurfaceContainerHigh,
    surfaceContainerHighest: darkSurfaceContainerHighest,
    onSurface: darkOnSurface,
    onSurfaceVariant: darkOnSurfaceVariant,
    outline: darkOutline,
    outlineVariant: darkOutlineVariant,
    inverseSurface: darkInverseSurface,
    inversePrimary: darkInversePrimary,
    shadow: darkShadow,
    scrim: darkScrim,
    surfaceTint: darkPrimary,
  );
}