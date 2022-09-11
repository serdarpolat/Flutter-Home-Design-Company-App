import 'package:flutter/material.dart' show MediaQuery, BuildContext;

class Metrics {
  Metrics._();

  static double width(BuildContext context) => MediaQuery.of(context).size.width;
  static double height(BuildContext context) => MediaQuery.of(context).size.height;

  static DeviceWidth getScreenWidth(BuildContext context) {
    if (width(context) >= 1440) {
      return DeviceWidth.lg;
    } else if (width(context) >= 976) {
      return DeviceWidth.md;
    } else if (width(context) >= 576) {
      return DeviceWidth.sm;
    } else {
      return DeviceWidth.xs;
    }
  }

  static bool isDesktop(BuildContext context) => getScreenWidth(context) == DeviceWidth.lg;
  static bool isTablet(BuildContext context) => getScreenWidth(context) == DeviceWidth.md;
  static bool isCompact(BuildContext context) => getScreenWidth(context) == DeviceWidth.sm;
  static bool isMobile(BuildContext context) => getScreenWidth(context) == DeviceWidth.xs;
}

enum DeviceWidth { xs, sm, md, lg }
