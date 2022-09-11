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
    return BaseContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
          Row(
            children: List.generate(
              cards.length,
              (index) => HowItWorksCardItem(
                item: cards[index],
              ),
            ),
          ),
          const SizedBox(height: 80),
        ],
      ),
    );
  }
}
