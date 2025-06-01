import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lpu_campux/core/model/ui_model/unit_info_ui_model.dart';
import 'package:lpu_campux/core/widgets/custom_image.dart';

import '../../../../../../../../core/basic_features.dart';

class AppExpandedTile extends StatelessWidget {
  final LectureInfo? lecture;
  final ExpandedUIModel? expandedUIModel;
  final int lectureIndex;
  final int unitIndex;
  final Function(int unitIndex, int lectureIndex) onLectureTap;

  const AppExpandedTile({
    super.key,
    this.lecture,
    required this.onLectureTap,
    required this.lectureIndex,
    required this.unitIndex,
    this.expandedUIModel,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          onLectureTap(
            unitIndex,
            lectureIndex,
          );
        },
        borderRadius: BorderRadius.circular(Dimensions.commonRadius),
        child: DecoratedBox(
          decoration: BoxDecoration(
            border:
                Border.all(color: AppColors.primaryColor, width: Dimensions.w1),
            borderRadius: BorderRadius.circular(Dimensions.commonRadius),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: Dimensions.w10),
            child: Row(
              children: [
                // Lecture Number
                Expanded(
                  flex: 5,
                  child: Text(
                    lecture != null
                        ? '${AppString.lecture}${lecture?.lectureNumber} ${" |  ${lecture?.durationInMinute} ${AppString.min}"}'
                        : '${expandedUIModel?.title}',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: fontStyleSemiBold14,
                  ),
                ),

                // Icon
                Expanded(
                  flex: 1,
                  child: IgnorePointer(
                    child: lecture != null
                        ? IconButton(
                            onPressed: () {},
                            icon: const Icon(CupertinoIcons.play),
                            color: AppColors.primaryColor,
                          )
                        : Padding(
                            padding: EdgeInsets.symmetric(vertical: Dimensions.h10),
                            child: CustomSvgAssetImage(
                              image: AppImages.icPDF,
                              width: Dimensions.w18,
                            ),
                          ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
