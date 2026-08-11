import 'package:flutter/material.dart';
import 'app_spacing.dart';

/// Custom theme extension for app-specific design tokens
/// Access via: Theme.of(context).extension<AppThemeExtension>()!
class AppThemeExtension extends ThemeExtension<AppThemeExtension> {
  // Border radius
  final BorderRadius cardRadius;
  final BorderRadius buttonRadius;
  final BorderRadius inputRadius;
  final BorderRadius sheetRadius;
  final BorderRadius avatarRadius;

  // Shadows
  final List<BoxShadow> cardShadow;
  final List<BoxShadow> elevatedShadow;
  final List<BoxShadow> modalShadow;
  final List<BoxShadow> fabShadow;

  // Elevation
  final double cardElevation;
  final double elevatedElevation;
  final double fabElevation;

  // Animation durations
  final Duration animationFast;
  final Duration animationNormal;
  final Duration animationSlow;
  final Duration animationPageTransition;
  final Duration animationFAB;

  // Opacity
  final double disabledOpacity;
  final double overlayOpacity;
  final double scrimOpacity;

  // Divider
  final double dividerThickness;
  final Color dividerColor;

  // Chip
  final BorderRadius chipRadius;
  final EdgeInsets chipPadding;
  final double chipLabelSpacing;

  // Search bar
  final BorderRadius searchBarRadius;
  final EdgeInsets searchBarPadding;
  final double searchBarIconSize;

  // Bottom nav
  final double bottomNavHeight;
  final double bottomNavIconSize;
  final double bottomNavFABNotchMargin;

  // Top bar
  final double topBarHeight;

  // Property card
  final double propertyImageAspectRatio;
  final double propertyImageHeight;
  final BorderRadius propertyImageRadius;

  // Avatar sizes
  final double avatarXS;
  final double avatarSM;
  final double avatarMD;
  final double avatarLG;
  final double avatarXL;

  // Breakpoints
  final double breakpointPhone;
  final double breakpointTablet;
  final double breakpointDesktop;

  const AppThemeExtension({
    required this.cardRadius,
    required this.buttonRadius,
    required this.inputRadius,
    required this.sheetRadius,
    required this.avatarRadius,
    required this.cardShadow,
    required this.elevatedShadow,
    required this.modalShadow,
    required this.fabShadow,
    required this.cardElevation,
    required this.elevatedElevation,
    required this.fabElevation,
    required this.animationFast,
    required this.animationNormal,
    required this.animationSlow,
    required this.animationPageTransition,
    required this.animationFAB,
    required this.disabledOpacity,
    required this.overlayOpacity,
    required this.scrimOpacity,
    required this.dividerThickness,
    required this.dividerColor,
    required this.chipRadius,
    required this.chipPadding,
    required this.chipLabelSpacing,
    required this.searchBarRadius,
    required this.searchBarPadding,
    required this.searchBarIconSize,
    required this.bottomNavHeight,
    required this.bottomNavIconSize,
    required this.bottomNavFABNotchMargin,
    required this.topBarHeight,
    required this.propertyImageAspectRatio,
    required this.propertyImageHeight,
    required this.propertyImageRadius,
    required this.avatarXS,
    required this.avatarSM,
    required this.avatarMD,
    required this.avatarLG,
    required this.avatarXL,
    required this.breakpointPhone,
    required this.breakpointTablet,
    required this.breakpointDesktop,
  });

  factory AppThemeExtension.light() => const AppThemeExtension(
    cardRadius: BorderRadius.all(Radius.circular(AppSpacing.radiusMD)),
    buttonRadius: BorderRadius.all(Radius.circular(AppSpacing.radiusSM)),
    inputRadius: BorderRadius.all(Radius.circular(AppSpacing.radiusSM)),
    sheetRadius: BorderRadius.vertical(top: Radius.circular(AppSpacing.radiusXL)),
    avatarRadius: BorderRadius.all(Radius.circular(AppSpacing.radiusFull)),
    cardShadow: [
      BoxShadow(
        color: Color(0x1A000000), // 10% black
        blurRadius: 8,
        offset: Offset(0, 2),
        spreadRadius: 0,
      ),
      BoxShadow(
        color: Color(0x0D000000), // 5% black
        blurRadius: 16,
        offset: Offset(0, 4),
        spreadRadius: -4,
      ),
    ],
    elevatedShadow: [
      BoxShadow(
        color: Color(0x1A000000),
        blurRadius: 12,
        offset: Offset(0, 4),
        spreadRadius: 0,
      ),
    ],
    modalShadow: [
      BoxShadow(
        color: Color(0x33000000), // 20% black
        blurRadius: 24,
        offset: Offset(0, 8),
        spreadRadius: -8,
      ),
    ],
    fabShadow: [
      BoxShadow(
        color: Color(0x33000000),
        blurRadius: 12,
        offset: Offset(0, 4),
        spreadRadius: 0,
      ),
    ],
    cardElevation: AppSpacing.cardElevation,
    elevatedElevation: 8.0,
    fabElevation: 6.0,
    animationFast: AppSpacing.durationXS,
    animationNormal: AppSpacing.durationSM,
    animationSlow: AppSpacing.durationMD,
    animationPageTransition: AppSpacing.durationMD,
    animationFAB: AppSpacing.durationSM,
    disabledOpacity: 0.38,
    overlayOpacity: 0.5,
    scrimOpacity: 0.32,
    dividerThickness: 1.0,
    dividerColor: Color(0xFFE0E0E0),
    chipRadius: BorderRadius.all(Radius.circular(AppSpacing.radiusFull)),
    chipPadding: EdgeInsets.symmetric(horizontal: AppSpacing.md, vertical: AppSpacing.xs),
    chipLabelSpacing: AppSpacing.xs,
    searchBarRadius: BorderRadius.all(Radius.circular(AppSpacing.radiusMD)),
    searchBarPadding: EdgeInsets.symmetric(horizontal: AppSpacing.md),
    searchBarIconSize: AppSpacing.iconMD,
    bottomNavHeight: AppSpacing.bottomNavHeight,
    bottomNavIconSize: AppSpacing.bottomNavIconSize,
    bottomNavFABNotchMargin: 8.0,
    topBarHeight: AppSpacing.topBarHeight,
    propertyImageAspectRatio: AppSpacing.propertyImageAspectRatio,
    propertyImageHeight: AppSpacing.propertyImageHeight,
    propertyImageRadius: BorderRadius.vertical(top: Radius.circular(AppSpacing.radiusMD)),
    avatarXS: AppSpacing.avatarXS,
    avatarSM: AppSpacing.avatarSM,
    avatarMD: AppSpacing.avatarMD,
    avatarLG: AppSpacing.avatarLG,
    avatarXL: AppSpacing.avatarXL,
    breakpointPhone: AppSpacing.breakpointPhone,
    breakpointTablet: AppSpacing.breakpointTablet,
    breakpointDesktop: AppSpacing.breakpointDesktop,
  );

  factory AppThemeExtension.dark() => const AppThemeExtension(
    cardRadius: BorderRadius.all(Radius.circular(AppSpacing.radiusMD)),
    buttonRadius: BorderRadius.all(Radius.circular(AppSpacing.radiusSM)),
    inputRadius: BorderRadius.all(Radius.circular(AppSpacing.radiusSM)),
    sheetRadius: BorderRadius.vertical(top: Radius.circular(AppSpacing.radiusXL)),
    avatarRadius: BorderRadius.all(Radius.circular(AppSpacing.radiusFull)),
    cardShadow: [
      BoxShadow(
        color: Color(0x33000000), // 20% black for dark
        blurRadius: 8,
        offset: Offset(0, 2),
        spreadRadius: 0,
      ),
      BoxShadow(
        color: Color(0x1A000000),
        blurRadius: 16,
        offset: Offset(0, 4),
        spreadRadius: -4,
      ),
    ],
    elevatedShadow: [
      BoxShadow(
        color: Color(0x33000000),
        blurRadius: 12,
        offset: Offset(0, 4),
        spreadRadius: 0,
      ),
    ],
    modalShadow: [
      BoxShadow(
        color: Color(0x4D000000), // 30% black for dark
        blurRadius: 24,
        offset: Offset(0, 8),
        spreadRadius: -8,
      ),
    ],
    fabShadow: [
      BoxShadow(
        color: Color(0x4D000000),
        blurRadius: 12,
        offset: Offset(0, 4),
        spreadRadius: 0,
      ),
    ],
    cardElevation: AppSpacing.cardElevation,
    elevatedElevation: 8.0,
    fabElevation: 6.0,
    animationFast: AppSpacing.durationXS,
    animationNormal: AppSpacing.durationSM,
    animationSlow: AppSpacing.durationMD,
    animationPageTransition: AppSpacing.durationMD,
    animationFAB: AppSpacing.durationSM,
    disabledOpacity: 0.38,
    overlayOpacity: 0.6,
    scrimOpacity: 0.5,
    dividerThickness: 1.0,
    dividerColor: Color(0xFF424242),
    chipRadius: BorderRadius.all(Radius.circular(AppSpacing.radiusFull)),
    chipPadding: EdgeInsets.symmetric(horizontal: AppSpacing.md, vertical: AppSpacing.xs),
    chipLabelSpacing: AppSpacing.xs,
    searchBarRadius: BorderRadius.all(Radius.circular(AppSpacing.radiusMD)),
    searchBarPadding: EdgeInsets.symmetric(horizontal: AppSpacing.md),
    searchBarIconSize: AppSpacing.iconMD,
    bottomNavHeight: AppSpacing.bottomNavHeight,
    bottomNavIconSize: AppSpacing.bottomNavIconSize,
    bottomNavFABNotchMargin: 8.0,
    topBarHeight: AppSpacing.topBarHeight,
    propertyImageAspectRatio: AppSpacing.propertyImageAspectRatio,
    propertyImageHeight: AppSpacing.propertyImageHeight,
    propertyImageRadius: BorderRadius.vertical(top: Radius.circular(AppSpacing.radiusMD)),
    avatarXS: AppSpacing.avatarXS,
    avatarSM: AppSpacing.avatarSM,
    avatarMD: AppSpacing.avatarMD,
    avatarLG: AppSpacing.avatarLG,
    avatarXL: AppSpacing.avatarXL,
    breakpointPhone: AppSpacing.breakpointPhone,
    breakpointTablet: AppSpacing.breakpointTablet,
    breakpointDesktop: AppSpacing.breakpointDesktop,
  );

  @override
  AppThemeExtension copyWith({
    BorderRadius? cardRadius,
    BorderRadius? buttonRadius,
    BorderRadius? inputRadius,
    BorderRadius? sheetRadius,
    BorderRadius? avatarRadius,
    List<BoxShadow>? cardShadow,
    List<BoxShadow>? elevatedShadow,
    List<BoxShadow>? modalShadow,
    List<BoxShadow>? fabShadow,
    double? cardElevation,
    double? elevatedElevation,
    double? fabElevation,
    Duration? animationFast,
    Duration? animationNormal,
    Duration? animationSlow,
    Duration? animationPageTransition,
    Duration? animationFAB,
    double? disabledOpacity,
    double? overlayOpacity,
    double? scrimOpacity,
    double? dividerThickness,
    Color? dividerColor,
    BorderRadius? chipRadius,
    EdgeInsets? chipPadding,
    double? chipLabelSpacing,
    BorderRadius? searchBarRadius,
    EdgeInsets? searchBarPadding,
    double? searchBarIconSize,
    double? bottomNavHeight,
    double? bottomNavIconSize,
    double? bottomNavFABNotchMargin,
    double? topBarHeight,
    double? propertyImageAspectRatio,
    double? propertyImageHeight,
    BorderRadius? propertyImageRadius,
    double? avatarXS,
    double? avatarSM,
    double? avatarMD,
    double? avatarLG,
    double? avatarXL,
    double? breakpointPhone,
    double? breakpointTablet,
    double? breakpointDesktop,
  }) {
    return AppThemeExtension(
      cardRadius: cardRadius ?? this.cardRadius,
      buttonRadius: buttonRadius ?? this.buttonRadius,
      inputRadius: inputRadius ?? this.inputRadius,
      sheetRadius: sheetRadius ?? this.sheetRadius,
      avatarRadius: avatarRadius ?? this.avatarRadius,
      cardShadow: cardShadow ?? this.cardShadow,
      elevatedShadow: elevatedShadow ?? this.elevatedShadow,
      modalShadow: modalShadow ?? this.modalShadow,
      fabShadow: fabShadow ?? this.fabShadow,
      cardElevation: cardElevation ?? this.cardElevation,
      elevatedElevation: elevatedElevation ?? this.elevatedElevation,
      fabElevation: fabElevation ?? this.fabElevation,
      animationFast: animationFast ?? this.animationFast,
      animationNormal: animationNormal ?? this.animationNormal,
      animationSlow: animationSlow ?? this.animationSlow,
      animationPageTransition: animationPageTransition ?? this.animationPageTransition,
      animationFAB: animationFAB ?? this.animationFAB,
      disabledOpacity: disabledOpacity ?? this.disabledOpacity,
      overlayOpacity: overlayOpacity ?? this.overlayOpacity,
      scrimOpacity: scrimOpacity ?? this.scrimOpacity,
      dividerThickness: dividerThickness ?? this.dividerThickness,
      dividerColor: dividerColor ?? this.dividerColor,
      chipRadius: chipRadius ?? this.chipRadius,
      chipPadding: chipPadding ?? this.chipPadding,
      chipLabelSpacing: chipLabelSpacing ?? this.chipLabelSpacing,
      searchBarRadius: searchBarRadius ?? this.searchBarRadius,
      searchBarPadding: searchBarPadding ?? this.searchBarPadding,
      searchBarIconSize: searchBarIconSize ?? this.searchBarIconSize,
      bottomNavHeight: bottomNavHeight ?? this.bottomNavHeight,
      bottomNavIconSize: bottomNavIconSize ?? this.bottomNavIconSize,
      bottomNavFABNotchMargin: bottomNavFABNotchMargin ?? this.bottomNavFABNotchMargin,
      topBarHeight: topBarHeight ?? this.topBarHeight,
      propertyImageAspectRatio: propertyImageAspectRatio ?? this.propertyImageAspectRatio,
      propertyImageHeight: propertyImageHeight ?? this.propertyImageHeight,
      propertyImageRadius: propertyImageRadius ?? this.propertyImageRadius,
      avatarXS: avatarXS ?? this.avatarXS,
      avatarSM: avatarSM ?? this.avatarSM,
      avatarMD: avatarMD ?? this.avatarMD,
      avatarLG: avatarLG ?? this.avatarLG,
      avatarXL: avatarXL ?? this.avatarXL,
      breakpointPhone: breakpointPhone ?? this.breakpointPhone,
      breakpointTablet: breakpointTablet ?? this.breakpointTablet,
      breakpointDesktop: breakpointDesktop ?? this.breakpointDesktop,
    );
  }

  @override
  AppThemeExtension lerp(ThemeExtension<AppThemeExtension>? other, double t) {
    if (other is! AppThemeExtension) return this;
    return copyWith(
      // Lerp not implemented for complex types, return this for simplicity
      // In production, implement proper lerping for each field
    );
  }
}

/// Extension for easy access
extension AppThemeExtensionX on BuildContext {
  AppThemeExtension get appTheme => Theme.of(this).extension<AppThemeExtension>()!;
}