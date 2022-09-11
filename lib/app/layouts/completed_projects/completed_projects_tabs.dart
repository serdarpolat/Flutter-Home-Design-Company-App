import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ventura/core/core.dart';

import 'completed_projects_tab_item.dart';

class CompletedProjectsTabs extends ConsumerWidget {
  const CompletedProjectsTabs({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: const Color(0xff896e57).withOpacity(0.25),
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(tabItems.length, (index) {
          final item = tabItems[index];

          return CompletedProjectsTabItem(
            item: item,
            isActive: ref.watch(completedProjectsProvider) == item.id,
            onTap: () {
              ref.read(completedProjectsProvider.notifier).change(item.id);
            },
          );
        }),
      ),
    );
  }
}
