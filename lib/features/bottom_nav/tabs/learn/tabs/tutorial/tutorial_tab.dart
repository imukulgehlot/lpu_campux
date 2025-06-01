import 'package:flutter/material.dart';
import 'package:lpu_campux/core/basic_features.dart';
import 'package:lpu_campux/core/widgets/common/start_continue_app_tile.dart';
import 'package:lpu_campux/features/bottom_nav/tabs/learn/tabs/tutorial/controllers/tutorials_controller.dart';
import 'package:lpu_campux/features/bottom_nav/tabs/learn/tabs/tutorial/widgets/tutorial_tile.dart';

class TutorialsTab extends GetView<TutorialsController> {
  const TutorialsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding:
              Dimensions.commonHorizontalPadding.copyWith(top: Dimensions.h15),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final tutorial = controller.tutorials[index];
                return Padding(
                  padding: EdgeInsets.only(
                    top: Dimensions.h7,
                    bottom: index == controller.tutorials.length - 1
                        ? Dimensions.h150
                        : Dimensions.h7,
                  ),
                  child: tutorial.completionPercentage == 0
                      ? StartContinueAppTile(
                          title: tutorial.title,
                          subtitle:
                              "${AppString.courseCode} ${tutorial.subtitle}",
                          buttonText: AppString.startNow,
                          onPressed: () =>
                              controller.navigateToViewUnitScreen(tutorial),
                        )
                      : TutorialItem(
                          tutorialItem: tutorial,
                          onPressed: () =>
                              controller.navigateToViewUnitScreen(tutorial),
                        ),
                );
              },
              childCount: controller.tutorials.length,
            ),
          ),
        ),
      ],
    );
  }
}
