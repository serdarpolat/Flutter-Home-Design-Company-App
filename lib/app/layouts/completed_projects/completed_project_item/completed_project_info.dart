import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ventura/core/core.dart';

class CompletedProjectInfo extends StatelessWidget {
  const CompletedProjectInfo({
    Key? key,
    required this.item,
  }) : super(key: key);

  final CompletedProjectItemModel item;

  @override
  Widget build(BuildContext context) {
    final pad = normalize(min: 976, max: 1440, data: Metrics.width(context));
    final pad1 = normalize(min: 576, max: 976, data: Metrics.width(context));

    return Expanded(
      flex: 2,
      child: SizedBox(
        height: 240 + 80 * pad1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            item.title.poppins(
              fontSize: 24 + 6 * pad1,
              fontWeight: FontWeight.bold,
              height: 1.5,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          'Budget'.poppins(
                            fontSize: 14 + 4 * pad1,
                            fontWeight: FontWeight.w600,
                            height: 1.5,
                            color: Colors.grey,
                          ),
                          item.budget.poppins(
                            fontSize: 16 + 4 * pad1,
                            fontWeight: FontWeight.w600,
                            height: 1.5,
                            color: greenBg,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          'Timespan'.poppins(
                            fontSize: 14 + 4 * pad1,
                            fontWeight: FontWeight.w600,
                            height: 1.5,
                            color: Colors.grey,
                          ),
                          item.timespan.poppins(
                            fontSize: 16 + 4 * pad1,
                            fontWeight: FontWeight.w600,
                            height: 1.5,
                            color: greenBg,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          'Status'.poppins(
                            fontSize: 14 + 4 * pad1,
                            fontWeight: FontWeight.w600,
                            height: 1.5,
                            color: Colors.grey,
                          ),
                          item.status.poppins(
                            fontSize: 16 + 4 * pad1,
                            fontWeight: FontWeight.w600,
                            height: 1.5,
                            color: greenBg,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          'Size'.poppins(
                            fontSize: 14 + 4 * pad1,
                            fontWeight: FontWeight.w600,
                            height: 1.5,
                            color: Colors.grey,
                          ),
                          Row(
                            children: [
                              item.size.poppins(
                                fontSize: 16 + 4 * pad1,
                                fontWeight: FontWeight.w600,
                                height: 1.5,
                                color: greenBg,
                              ),
                              '2'.poppins(
                                fontSize: 16 + 4 * pad1,
                                fontWeight: FontWeight.w600,
                                height: 1.5,
                                color: greenBg,
                                fontFeatures: [const FontFeature.superscripts()],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Material(
                  color: greenBorder,
                  child: InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: [
                          'See details'.poppins(fontSize: 16, fontWeight: FontWeight.w500, color: white),
                          const SizedBox(width: 12),
                          const Icon(
                            FontAwesomeIcons.chevronRight,
                            color: white,
                            size: 16,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
