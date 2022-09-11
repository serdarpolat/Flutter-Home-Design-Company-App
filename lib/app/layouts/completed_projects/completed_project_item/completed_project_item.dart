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
    return Container(
      padding: const EdgeInsets.only(top: 70, bottom: 80, left: 112, right: 112),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: const Color(0xff896e57).withOpacity(0.25),
            width: 2,
          ),
        ),
      ),
      child: imageLeft
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
