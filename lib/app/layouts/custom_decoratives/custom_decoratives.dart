import 'package:flutter/material.dart';
import 'package:ventura/app/widgets/base_container.dart';
import 'package:ventura/core/core.dart';

import 'custom_decorative_item.dart';

class CustomDecoratives extends StatelessWidget {
  const CustomDecoratives({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pad = normalize(min: 576, max: 1440, data: Metrics.width(context));

    return BaseContainer(
      child: Column(
        crossAxisAlignment: Metrics.isMobile(context) ? CrossAxisAlignment.center : CrossAxisAlignment.start,
        children: [
          'PRODUCTS'.toUpperCase().poppins(
                color: const Color(0xff896e57),
                fontWeight: FontWeight.bold,
                height: 1.5,
                letterSpacing: 1,
              ),
          const SizedBox(height: 16),
          'Custom interior decoratives'.stixTwoText(
            textAlign: Metrics.isMobile(context) ? TextAlign.center : TextAlign.left,
            fontSize: 36 + 12 * pad,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(height: 44),
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: Metrics.isMobile(context)
                  ? 1
                  : Metrics.isCompact(context)
                      ? 2
                      : Metrics.isTablet(context)
                          ? 3
                          : 4,
              childAspectRatio: 285 / (340),
              crossAxisSpacing: 24,
              mainAxisSpacing: 0,
            ),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: decorativeItems.length,
            itemBuilder: (context, index) {
              final gridItem = decorativeItems[index];

              return CustomDecorativeItem(gridItem: gridItem);
            },
          ),
          const SizedBox(height: 300),
        ],
      ),
    );
  }
}
