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
    final pad = normalize(min: 576, max: 1440, data: Metrics.width(context));
    return Column(
      children: [
        Expanded(
          child: Container(
            width: 1 + 1 * pad,
            margin: EdgeInsets.only(top: isTall ? 0 : 12 + 12 * pad, left: 2 + 3 * pad, right: 2 + 3 * pad),
            color: textPrimary,
          ),
        ),
      ],
    );
  }
}
