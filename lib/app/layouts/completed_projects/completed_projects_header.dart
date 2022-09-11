import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ventura/core/core.dart';

class CompletedProjectsHeader extends StatelessWidget {
  const CompletedProjectsHeader({
    Key? key,
    required this.pad,
  }) : super(key: key);

  final double pad;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: Metrics.isMobile(context) ? MainAxisAlignment.center : MainAxisAlignment.start,
          children: [
            'portfolio'.toUpperCase().poppins(
                  color: const Color(0xff896e57),
                  fontWeight: FontWeight.bold,
                  height: 1.5,
                  letterSpacing: 1,
                ),
          ],
        ),
        const SizedBox(height: 16),
        if (!Metrics.isMobile(context))
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              'Projects we\'ve done'.stixTwoText(
                fontSize: 32 + 16 * pad,
                fontWeight: FontWeight.bold,
              ),
              Material(
                color: Colors.transparent,
                shape: const RoundedRectangleBorder(
                  side: BorderSide(color: greenBorder, width: 2),
                ),
                child: InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        'See all projects'.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        const SizedBox(width: 12),
                        const Icon(
                          FontAwesomeIcons.chevronRight,
                          color: textPrimary,
                          size: 16,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        if (Metrics.isMobile(context))
          Column(
            children: [
              'Projects we\'ve done'.stixTwoText(
                fontSize: 32 + 16 * pad,
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Material(
                    color: Colors.transparent,
                    shape: const RoundedRectangleBorder(
                      side: BorderSide(color: greenBorder, width: 2),
                    ),
                    child: InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          children: [
                            'See all projects'.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                            const SizedBox(width: 12),
                            const Icon(
                              FontAwesomeIcons.chevronRight,
                              color: textPrimary,
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
      ],
    );
  }
}
