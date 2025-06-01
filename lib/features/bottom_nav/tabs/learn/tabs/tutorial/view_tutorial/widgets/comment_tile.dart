import 'package:flutter/material.dart';
import 'package:lpu_campux/core/model/ui_model/comments_ui_model.dart';

import '../../../../../../../../core/basic_features.dart';

class CommentTile extends StatelessWidget {
  const CommentTile({
    super.key,
    required this.index,
    required this.comment,
  });

  final CommentsUIModel comment;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          bottom: index == 4 ? Dimensions.h150 : Dimensions.h2,
       ),
      padding: EdgeInsets.symmetric(
          horizontal: Dimensions.w14, vertical: Dimensions.h8),
      decoration: BoxDecoration(
        color: AppColors.containerColor,
        borderRadius: BorderRadius.circular(Dimensions.commonRadius),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            spacing: Dimensions.w10,
            children: [
              // User Image
              CircleAvatar(
                radius: Dimensions.w18,
                backgroundColor: AppColors.primaryLightColor,
                foregroundColor: AppColors.primaryLightColor,
                child: Center(
                  child: Text(
                    AppUtils.getInitials(comment.userName),
                    style: fontStyleSemiBold14.apply(
                        color: AppColors.darkSmokeGray),
                  ),
                ),
              ),

              // User Name
              Text(
                comment.userName,
                style: fontStyleSemiBold16,
              ),
              const Spacer(),

              // Date
              Text(
                comment.dateLabel,
                style:
                    fontStyleRegular13.apply(color: AppColors.tagLineGreyColor),
              ),
            ],
          ),

          // Comment
          Padding(
            padding: EdgeInsets.only(top: Dimensions.h5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  comment.comment,
                  style: fontStyleMedium13.apply(
                      color: AppColors.tagLineGreyColor),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
