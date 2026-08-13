import 'package:flutter/material.dart';

enum DeviceType {
  phone,
  tablet,
  desktop,
}

class Responsive {
  static const double phoneBreakpoint = 600;
  static const double tabletBreakpoint = 900;
  static const double desktopBreakpoint = 1200;

  static DeviceType getDeviceType(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    if (width < phoneBreakpoint) return DeviceType.phone;
    if (width < tabletBreakpoint) return DeviceType.tablet;
    return DeviceType.desktop;
  }

  static bool isPhone(BuildContext context) =>
      getDeviceType(context) == DeviceType.phone;

  static bool isTablet(BuildContext context) =>
      getDeviceType(context) == DeviceType.tablet;

  static bool isDesktop(BuildContext context) =>
      getDeviceType(context) == DeviceType.desktop;

  static bool isTabletOrDesktop(BuildContext context) =>
      !isPhone(context);

  // Grid cross axis count based on device type
  static int getGridCrossAxisCount(BuildContext context) {
    switch (getDeviceType(context)) {
      case DeviceType.phone:
        return 1;
      case DeviceType.tablet:
        return 2;
      case DeviceType.desktop:
        return 3;
    }
  }

  // Grid child aspect ratio based on device type
  static double getGridChildAspectRatio(BuildContext context) {
    switch (getDeviceType(context)) {
      case DeviceType.phone:
        return 0.75;
      case DeviceType.tablet:
        return 0.8;
      case DeviceType.desktop:
        return 0.85;
    }
  }

  // Horizontal padding based on device type
  static double getHorizontalPadding(BuildContext context) {
    switch (getDeviceType(context)) {
      case DeviceType.phone:
        return 16;
      case DeviceType.tablet:
        return 24;
      case DeviceType.desktop:
        return 32;
    }
  }

  // Max content width for centered layouts
  static double getMaxContentWidth(BuildContext context) {
    switch (getDeviceType(context)) {
      case DeviceType.phone:
        return double.infinity;
      case DeviceType.tablet:
        return 720;
      case DeviceType.desktop:
        return 1024;
    }
  }

  // Font scale factor
  static double getFontScaleFactor(BuildContext context) {
    switch (getDeviceType(context)) {
      case DeviceType.phone:
        return 1.0;
      case DeviceType.tablet:
        return 1.1;
      case DeviceType.desktop:
        return 1.2;
    }
  }
}

// Extension for easier access
extension ResponsiveContext on BuildContext {
  DeviceType get deviceType => Responsive.getDeviceType(this);
  bool get isPhone => Responsive.isPhone(this);
  bool get isTablet => Responsive.isTablet(this);
  bool get isDesktop => Responsive.isDesktop(this);
  bool get isTabletOrDesktop => Responsive.isTabletOrDesktop(this);
  int get gridCrossAxisCount => Responsive.getGridCrossAxisCount(this);
  double get gridChildAspectRatio => Responsive.getGridChildAspectRatio(this);
  double get horizontalPadding => Responsive.getHorizontalPadding(this);
  double get maxContentWidth => Responsive.getMaxContentWidth(this);
  double get fontScaleFactor => Responsive.getFontScaleFactor(this);
}