import 'package:flutter/material.dart';
import 'package:lpu_campux/core/constants/app_string.dart';
import 'package:lpu_campux/core/constants/dimensions.dart';
import 'package:lpu_campux/core/model/ui_model/unit_info_ui_model.dart';
import 'package:lpu_campux/core/utils/extension.dart';
import 'package:lpu_campux/core/widgets/expansion_row.dart';
import 'package:lpu_campux/features/bottom_nav/tabs/learn/tabs/tutorial/view_units/widgets/app_expanded_tile.dart';

class AppCollapsedTile extends StatelessWidget {
  AppCollapsedTile({
    super.key,
    required this.expansionData,
    required this.onExpandedTileTap,
    required this.expansionIndex,
  });

  final ExpandedUIModel expansionData;
  final int expansionIndex;
  final Function(int expansionIndex, int expandedIndex) onExpandedTileTap;

  late final innerList = expansionData.lectures.isNotEmpty
      ? expansionData.lectures
      : expansionData.expandedUIModel;

  @override
  Widget build(BuildContext context) {
    return ExpansionRow(
      title: expansionData.lectures.isNotEmpty
          ? '${AppString.unit} ${expansionData.unitNumber}'
          : '${expansionData.title}',
      subtitle: expansionData.lectures.isNotEmpty
          ? "${expansionData.durationInMinute} ${AppString.min}"
          : "${expansionData.expandedUIModel.length} Subjects",
      expandedWidget: ListView.builder(
        itemCount: innerList.length,
        padding: EdgeInsets.symmetric(horizontal: Dimensions.w20),
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.only(
              top: Dimensions.h6,
              bottom: index == innerList.length - 1
                  ? Dimensions.h15
                  : Dimensions.h6,
            ),
            child: AppExpandedTile(
              key: ValueKey('${innerList[index]}Subjects!'),
              lecture: expansionData.lectures.isNotNullOrEmpty()
                  ? expansionData.lectures[index]
                  : null,
              expandedUIModel: expansionData.expandedUIModel.isNotNullOrEmpty()
                  ? expansionData.expandedUIModel[index]
                  : null,
              lectureIndex: index,
              unitIndex: expansionIndex,
              onLectureTap: onExpandedTileTap,
            )),
      ),
    );
  }
}
