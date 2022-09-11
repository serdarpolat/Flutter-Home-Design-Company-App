import 'package:flutter/material.dart';
import 'package:ventura/core/core.dart';

import 'experiences_info_item.dart';

class ExperiencesInfo extends StatelessWidget {
  const ExperiencesInfo({
    Key? key,
    required this.pad,
    required this.isBigScreen,
  }) : super(key: key);

  final double pad;
  final bool isBigScreen;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: isBigScreen ? CrossAxisAlignment.start : CrossAxisAlignment.center,
        children: [
          'Ventura\'s'.msMadi(
            color: orange,
            fontSize: 52,
          ),
          'We design living spaces that are built to support your key life experience.'.stixTwoText(
            textAlign: isBigScreen ? TextAlign.left : TextAlign.center,
            color: white,
            fontSize: 40,
            height: 1.5,
          ),
          const SizedBox(height: 48),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ExperiencesInfoItem(pad: pad, count: '10', title: 'Years of experiences'),
              ExperiencesInfoItem(pad: pad, count: '220+', title: 'Completed Projects'),
              ExperiencesInfoItem(pad: pad, count: '4.5', title: 'Overall Ratings'),
            ],
          ),
        ],
      ),
    );
  }
}
