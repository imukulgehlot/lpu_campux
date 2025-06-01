import 'package:flutter/material.dart';
import 'package:lpu_campux/features/bottom_nav/tabs/learn/tabs/content/controllers/content_controller.dart';
import 'package:lpu_campux/features/bottom_nav/tabs/learn/tabs/tutorial/view_units/widgets/app_collapsed_tile.dart';

import '../../../../../../core/basic_features.dart';

class ContentTab extends GetView<ContentController> {
  const ContentTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding:
          Dimensions.commonHorizontalPadding.copyWith(top: Dimensions.h20),
      itemBuilder: (context, index) {
        final semester = controller.semesters[index];
        return Padding(
          padding: EdgeInsets.only(
            top: Dimensions.h7,
            bottom: index == controller.semesters.length - 1
                ? Dimensions.h150
                : Dimensions.h7,
          ),
          child: AppCollapsedTile(
            key: ValueKey('${semester.hashCode}Content'),
            expansionData: semester,
            expansionIndex: index,
            onExpandedTileTap: (expansionIndex, expandedIndex) =>
                controller.navigateToPDFViewer(
                    collapseTileIndex: expansionIndex,
                    expandedTileIndex: expandedIndex),
          ),
        );
      },
      itemCount: controller.semesters.length,
    );
  }
}
