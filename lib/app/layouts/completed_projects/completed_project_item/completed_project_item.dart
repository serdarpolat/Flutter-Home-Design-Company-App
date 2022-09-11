import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ventura/core/core.dart';

import 'completed_project_image.dart';
import 'completed_project_info.dart';

class CompletedProjectItem extends ConsumerWidget {
  const CompletedProjectItem({
    Key? key,
    required this.item,
    required this.isImageLeft,
  }) : super(key: key);

  final CompletedProjectItemModel item;
  final bool isImageLeft;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(completedProjectsProvider);
    bool imageLeft = provider % 2 == 0 ? isImageLeft : !isImageLeft;
    final pad = normalize(min: 976, max: 1440, data: Metrics.width(context));

    return Container(
      padding: EdgeInsets.only(top: 40 + 30.0 * pad, bottom: 45 + 35 * pad, left: 112 * pad, right: 112 * pad),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: const Color(0xff896e57).withOpacity(0.25),
            width: 2,
          ),
        ),
      ),
      child: Metrics.isMobile(context)
          ? Column(
              children: [
                Row(
                  children: [
                    CompletedProjectImage(isImageLeft: imageLeft, item: item),
                  ],
                ),
                const SizedBox(height: 44),
                Row(
                  children: [
                    CompletedProjectInfo(item: item),
                  ],
                ),
              ],
            )
          : imageLeft
              ? Row(
                  children: [
                    CompletedProjectImage(isImageLeft: imageLeft, item: item),
                    CompletedProjectInfo(item: item),
                  ],
                )
              : Row(
                  children: [
                    CompletedProjectInfo(item: item),
                    CompletedProjectImage(isImageLeft: imageLeft, item: item),
                  ],
                ),
    );
  }
}
