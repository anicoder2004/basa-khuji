class AppSpacing {
  // Base unit: 4dp
  static const double baseUnit = 4.0;

  // Spacing scale (multiples of baseUnit)
  static const double xs = baseUnit * 1; // 4dp
  static const double sm = baseUnit * 2; // 8dp
  static const double md = baseUnit * 4; // 16dp
  static const double lg = baseUnit * 6; // 24dp
  static const double xl = baseUnit * 8; // 32dp
  static const double xxl = baseUnit * 12; // 48dp
  static const double xxxl = baseUnit * 16; // 64dp

  // Specific spacing values for common use cases
  static const double paddingXS = xs;
  static const double paddingSM = sm;
  static const double paddingMD = md;
  static const double paddingLG = lg;
  static const double paddingXL = xl;

  static const double marginXS = xs;
  static const double marginSM = sm;
  static const double marginMD = md;
  static const double marginLG = lg;
  static const double marginXL = xl;

  // Border radius
  static const double radiusXS = 4.0;
  static const double radiusSM = 8.0;
  static const double radiusMD = 12.0;
  static const double radiusLG = 16.0;
  static const double radiusXL = 24.0;
  static const double radiusFull = 9999.0;

  // Card specific
  static const double cardRadius = radiusMD;
  static const double cardPadding = md;
  static const double cardElevation = 4.0;

  // Button
  static const double buttonHeight = 48.0;
  static const double buttonHeightSM = 36.0;
  static const double buttonHeightLG = 56.0;
  static const double buttonPaddingHorizontal = lg;
  static const double buttonBorderRadius = radiusSM;

  // Input field
  static const double inputHeight = 48.0;
  static const double inputPaddingHorizontal = md;
  static const double inputPaddingVertical = sm;
  static const double inputBorderRadius = radiusSM;

  // Search bar
  static const double searchBarHeight = 48.0;
  static const double searchBarIconSize = 24.0;

  // Bottom nav
  static const double bottomNavHeight = 60.0;
  static const double bottomNavIconSize = 20.0;
  static const double bottomNavFABSize = 56.0;

  // Top bar / App bar
  static const double topBarHeight = 56.0;
  static const double appBarHeight = 56.0;

  // Image
  static const double propertyImageAspectRatio = 16 / 9;
  static const double propertyImageHeight = 180.0;

  // Avatar
  static const double avatarXS = 24.0;
  static const double avatarSM = 32.0;
  static const double avatarMD = 40.0;
  static const double avatarLG = 56.0;
  static const double avatarXL = 80.0;

  // Icon sizes
  static const double iconXS = 16.0;
  static const double iconSM = 20.0;
  static const double iconMD = 24.0;
  static const double iconLG = 28.0;
  static const double iconXL = 32.0;

  // Animation durations
  static const Duration durationXS = Duration(milliseconds: 100);
  static const Duration durationSM = Duration(milliseconds: 200);
  static const Duration durationMD = Duration(milliseconds: 300);
  static const Duration durationLG = Duration(milliseconds: 500);
  static const Duration durationXL = Duration(milliseconds: 800);

  // Screen breakpoints
  static const double breakpointPhone = 600.0;
  static const double breakpointTablet = 900.0;
  static const double breakpointDesktop = 1200.0;
}