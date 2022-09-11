import 'package:flutter/material.dart';
import 'package:ventura/app/widgets/base_container.dart';
import 'package:ventura/app/widgets/how_it_work_card_item.dart';
import 'package:ventura/core/core.dart';

class HowItWorks extends StatelessWidget {
  const HowItWorks({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isBigScreen = Metrics.isDesktop(context) || Metrics.isTablet(context);

    return BaseContainer(
      child: Column(
        crossAxisAlignment: Metrics.isMobile(context) ? CrossAxisAlignment.center : CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 80),
          'how it works'.toUpperCase().poppins(
                color: const Color(0xff896e57),
                fontWeight: FontWeight.bold,
                height: 1.5,
                letterSpacing: 1,
              ),
          const SizedBox(height: 16),
          'Visualize your ideas'.stixTwoText(
            fontSize: 48,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(height: 48),
          if (isBigScreen)
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                cards.length,
                (index) => HowItWorksCardItem(
                  item: cards[index],
                ),
              ),
            ),
          if (Metrics.isCompact(context))
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                2,
                (index) => HowItWorksCardItem(
                  item: cards[index],
                ),
              ),
            ),
          if (Metrics.isCompact(context))
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                2,
                (index) => HowItWorksCardItem(
                  item: cards[index + 2],
                ),
              ),
            ),
          if (Metrics.isMobile(context))
            Column(
              children: List.generate(
                cards.length,
                (index) => Row(
                  children: [
                    HowItWorksCardItem(
                      item: cards[index],
                    ),
                  ],
                ),
              ),
            ),
          const SizedBox(height: 80),
        ],
      ),
    );
  }
}
