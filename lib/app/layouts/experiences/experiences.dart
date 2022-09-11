import 'package:flutter/material.dart';
import 'package:ventura/app/widgets/base_container.dart';
import 'package:ventura/core/core.dart';

import 'experiences_image.dart';
import 'experiences_info.dart';

class Experiences extends StatelessWidget {
  const Experiences({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pad = normalize(min: 976, max: 1440, data: Metrics.width(context));
    final isBigScreen = Metrics.isDesktop(context) || Metrics.isTablet(context);

    return Container(
      width: Metrics.width(context),
      color: greenBg,
      child: Column(
        children: [
          BaseContainer(
            child: Column(
              children: [
                const SizedBox(height: 90),
                if (isBigScreen)
                  Row(
                    children: [
                      const ExperiencesImage(),
                      SizedBox(width: 60 * pad),
                      ExperiencesInfo(pad: pad, isBigScreen: isBigScreen),
                    ],
                  ),
                if (!isBigScreen)
                  Column(
                    children: [
                      Row(
                        children: const [
                          ExperiencesImage(),
                        ],
                      ),
                      const SizedBox(height: 36),
                      Row(
                        children: [
                          ExperiencesInfo(pad: pad, isBigScreen: isBigScreen),
                        ],
                      ),
                    ],
                  ),
                const SizedBox(height: 90),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
