import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ventura/core/core.dart';

import 'completed_projects_tab_item.dart';

class CompletedProjectsTabs extends StatelessWidget {
  const CompletedProjectsTabs({
    Key? key,
    required this.pad,
  }) : super(key: key);

  final double pad;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: const Color(0xff896e57).withOpacity(0.25),
          ),
        ),
      ),
      child: Metrics.width(context) >= 783
          ? CompletedProjectsTabList(pad: pad)
          : SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              controller: ScrollController(),
              child: CompletedProjectsTabList(pad: pad),
            ),
    );
  }
}

class CompletedProjectsTabList extends ConsumerWidget {
  const CompletedProjectsTabList({
    Key? key,
    required this.pad,
  }) : super(key: key);

  final double pad;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(tabItems.length, (index) {
        final item = tabItems[index];

        return CompletedProjectsTabItem(
          pad: pad,
          item: item,
          isActive: ref.watch(completedProjectsProvider) == item.id,
          onTap: () {
            ref.read(completedProjectsProvider.notifier).change(item.id);
          },
        );
      }),
    );
  }
}
