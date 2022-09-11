import 'package:flutter/material.dart';
import 'package:ventura/core/theme/app_colors.dart';

class IconBtn extends StatelessWidget {
  const IconBtn({super.key, required this.icon, this.onTap, this.bgColor, this.iconColor, this.width});

  final IconData icon;
  final Function()? onTap;
  final Color? bgColor;
  final Color? iconColor;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: bgColor ?? Colors.transparent,
      borderRadius: BorderRadius.circular(6),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(6),
        child: SizedBox(
          width: width ?? 36,
          height: width ?? 36,
          child: Center(
            child: Icon(
              icon,
              color: iconColor ?? white,
              size: 20,
            ),
          ),
        ),
      ),
    );
  }
}
