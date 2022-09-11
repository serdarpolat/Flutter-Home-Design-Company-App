import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ventura/app/widgets/base_container.dart';
import 'package:ventura/core/core.dart';

import 'completed_project_item/completed_project_item.dart';
import 'completed_projects_tabs.dart';

class CompletedProjects extends StatelessWidget {
  const CompletedProjects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 80),
          'portfolio'.toUpperCase().poppins(
                color: const Color(0xff896e57),
                fontWeight: FontWeight.bold,
                height: 1.5,
                letterSpacing: 1,
              ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              'Projects we\'ve done'.stixTwoText(
                fontSize: 48,
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
          const SizedBox(height: 36),
          const CompletedProjectsTabs(),
          ...List.generate(completedProjects.length, (index) {
            final item = completedProjects[index];
            return CompletedProjectItem(
              item: item,
              isImageLeft: index % 2 == 0,
            );
          }),
          const SizedBox(height: 80),
        ],
      ),
    );
  }
}
