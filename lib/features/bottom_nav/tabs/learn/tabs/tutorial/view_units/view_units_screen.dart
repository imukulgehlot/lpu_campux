import 'package:flutter/material.dart';
import 'package:lpu_campux/core/basic_features.dart';
import 'package:lpu_campux/core/model/ui_model/tutorial_ui_model.dart';
import 'package:lpu_campux/core/widgets/custom_appbar.dart';
import 'package:lpu_campux/features/bottom_nav/tabs/learn/tabs/tutorial/view_units/widgets/app_collapsed_tile.dart';

import 'controllers/view_units_controller.dart';

class ViewUnitsScreen extends StatelessWidget {
  final ExpansionUIModel tutorial;

  const ViewUnitsScreen({super.key, required this.tutorial});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: ViewUnitsController()..tutorial = tutorial,
      builder: (controller) => Scaffold(
          appBar: CustomAppBar.defaultAppBarWithBackButton(
            title: tutorial.title.length > 20
                ? '${tutorial.title.substring(0, 20)}...'
                : tutorial.title,
            subtitle: "${AppString.courseCode} ${tutorial.subtitle}",
          ),
          body: ListView.builder(
            padding: Dimensions.commonHorizontalPadding
                .copyWith(top: Dimensions.h20),
            itemBuilder: (context, index) {
              final unit = controller.tutorial.expandedUIModel[index];
              return Padding(
                padding: EdgeInsets.only(
                  top: Dimensions.h7,
                  bottom:
                      index == controller.tutorial.expandedUIModel.length - 1
                          ? Dimensions.h150
                          : Dimensions.h7,
                ),
                child: AppCollapsedTile(
                  key: ValueKey('${unit.unitNumber}Unit'),
                  expansionData: unit,
                  expansionIndex: index,
                  onExpandedTileTap: (unitIndex, lectureIndex) =>
                      controller.navigateToTutorialScreen(
                          unitIndex: unitIndex, lectureIndex: lectureIndex),
                ),
              );
            },
            itemCount: controller.tutorial.expandedUIModel.length,
          )),
    );
  }
}
