import 'package:flutter/material.dart';
import 'package:ventura/core/utils/metrics.dart';

class BaseContainer extends StatelessWidget {
  const BaseContainer({Key? key, required this.child, this.height}) : super(key: key);
  final Widget child;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Metrics.isDesktop(context) ? 1440 : Metrics.width(context),
      height: height,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Metrics.isMobile(context) ? 16 : 24),
        child: child,
      ),
    );
  }
}
