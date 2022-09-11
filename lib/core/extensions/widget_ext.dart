import 'dart:ui';

import 'package:flutter/material.dart';

extension WidgetExtensions on Widget {
  ClipRRect blur({double? borderRadius, double? blur}) => ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius ?? 0),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: blur ?? 10,
            sigmaY: blur ?? 10,
          ),
          child: this,
        ),
      );
}
