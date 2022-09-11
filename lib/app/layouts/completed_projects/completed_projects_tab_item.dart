import 'package:flutter/material.dart';
import 'package:ventura/core/core.dart';

class CompletedProjectsTabItem extends StatelessWidget {
  const CompletedProjectsTabItem({
    Key? key,
    required this.item,
    this.onTap,
    required this.isActive,
    required this.pad,
  }) : super(key: key);

  final CompletedProjectsTabItemModel item;
  final Function()? onTap;
  final bool isActive;

  final double pad;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: white.withOpacity(0),
      child: InkWell(
        onTap: onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 240),
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: isActive ? greenBorder : greenBorder.withOpacity(0),
                width: 4,
              ),
            ),
          ),
          child: item.title.poppins(
            fontSize: 13 + 3 * pad,
            fontWeight: FontWeight.bold,
            color: isActive ? greenBorder : Colors.grey,
          ),
        ),
      ),
    );
  }
}
