import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:lpu_campux/core/basic_features.dart';
import 'package:lpu_campux/core/model/ui_model/tutorial_ui_model.dart';
import 'package:lpu_campux/core/widgets/custom_appbar.dart';
import 'package:lpu_campux/features/bottom_nav/tabs/learn/tabs/tutorial/view_tutorial/widgets/add_comment_tile.dart';
import 'package:lpu_campux/features/bottom_nav/tabs/learn/tabs/tutorial/view_tutorial/widgets/comment_tile.dart';
import 'package:lpu_campux/features/bottom_nav/tabs/learn/tabs/tutorial/view_tutorial/widgets/youtube_video_player.dart';
import 'package:readmore/readmore.dart';

import 'controllers/view_tutorial_controller.dart';

class ViewTutorialScreen extends StatelessWidget {
  final ExpansionUIModel tutorial;
  final int unitIndex;
  final int lectureIndex;

  const ViewTutorialScreen(
      {super.key,
      required this.tutorial,
      required this.unitIndex,
      required this.lectureIndex});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: ViewTutorialController()..subjectName = tutorial.title,
      builder: (controller) => Scaffold(
        appBar: CustomAppBar.defaultAppBarWithBackButton(
          title: tutorial.title.length > 20
              ? '${tutorial.title.substring(0, 20)}...'
              : tutorial.title,
          subtitle:
              "${AppString.unit}${tutorial.expandedUIModel[unitIndex].unitNumber} | ${AppString.lecture} ${tutorial.expandedUIModel[unitIndex].lectures[lectureIndex].lectureNumber}",
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            YouTubePlayerBox(
              videoUrl: tutorial.expandedUIModel[unitIndex]
                  .lectures[lectureIndex].youTubeLink,
            ),

            //  Tagline | Description | Comment
            Expanded(
                child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(
                  horizontal: Dimensions.commonPaddingForScreen),
              children: [
                SizedBox(
                  height: Dimensions.h20,
                ),
                // Tagline
                Row(
                  spacing: Dimensions.w5,
                  children: [
                    // Tagline
                    Text(
                      AppString.watchLearnRate,
                      style: fontStyleSemiBold14,
                    ),

                    // Stars
                    RatingBar.builder(
                      initialRating: 3,
                      glowColor: AppColors.primaryLightColor,
                      glowRadius: 2,
                      minRating: 1,
                      itemSize: Dimensions.w22,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      unratedColor: AppColors.containerColor,
                      itemPadding: EdgeInsets.symmetric(horizontal: 0.05),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (_) {},
                    )
                  ],
                ),

                // Description
                Padding(
                  padding: EdgeInsets.only(top: Dimensions.h10),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: AppColors.containerColor,
                      borderRadius:
                          BorderRadius.circular(Dimensions.commonRadius),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(Dimensions.w10),
                      child: ReadMoreText(
                        AppString.demoComment,
                        trimMode: TrimMode.Line,
                        trimLines: 2,
                        style: fontStyleMedium13,
                        trimCollapsedText: 'Show more',
                        trimExpandedText: ' Show less',
                        lessStyle: fontStyleRegular13.apply(
                            color: CupertinoColors.systemBlue),
                        moreStyle: fontStyleRegular13.apply(
                            color: CupertinoColors.systemBlue),
                      ),
                    ),
                  ),
                ),

                // Comment Title
                Padding(
                  padding: EdgeInsets.symmetric(vertical: Dimensions.h14),
                  child: Text(
                    AppString.comments,
                    style: fontStyleSemiBold14,
                  ),
                ),

                // Comment List
                Obx(
                  () => ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: controller.comments.length,
                    separatorBuilder: (context, index) => SizedBox(
                      height: Dimensions.h10,
                    ),
                    itemBuilder: (context, index) => CommentTile(
                        comment: controller.comments[index], index: index),
                  ),
                ),
              ],
            ))
          ],
        ),
        bottomNavigationBar: // Outlined Text Field for Adding Comment
            AddCommentTile(
          controller: controller,
        ),
      ),
    );
  }
}
