import 'package:flutter/material.dart';
import 'package:ventura/core/core.dart';

class MeterItem extends StatelessWidget {
  const MeterItem({
    Key? key,
    required this.isTall,
    required this.metric,
  }) : super(key: key);
  final bool isTall;
  final String metric;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        metric.poppins(
          fontWeight: FontWeight.w800,
          fontSize: 10,
        ),
        const SizedBox(height: 8),
        Expanded(
          child: Container(
            width: 2,
            margin: EdgeInsets.only(top: isTall ? 0 : 24, left: 5, right: 5),
            color: textPrimary,
          ),
        ),
      ],
    );
  }
}
