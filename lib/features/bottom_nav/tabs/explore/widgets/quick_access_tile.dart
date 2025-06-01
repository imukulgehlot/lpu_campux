import 'package:flutter/material.dart';
import 'package:lpu_campux/core/model/ui_model/category_model.dart';
import 'package:lpu_campux/core/widgets/custom_image.dart';

import '../../../../../core/basic_features.dart';

class QuickAccessTile extends StatelessWidget {
  const QuickAccessTile({
    super.key,
    required this.index,
    required this.quickItem,
  });

  final int index;
  final CommonUIModel quickItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: Dimensions.h10,
        left: index.isEven ? 0 : Dimensions.w5,
        right: index.isEven ? Dimensions.w5 : 0,
      ),
      child: Material(
        color: AppColors.containerColor,
        borderRadius: BorderRadius.circular(Dimensions.commonRadius),
        child: InkWell(
          borderRadius: BorderRadius.circular(Dimensions.commonRadius),
          onTap: quickItem.onTap,
          child: Padding(
            padding: EdgeInsets.all(Dimensions.h10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: Dimensions.h10,
              children: [
                // Icon
                CustomSvgAssetImage(
                  image: quickItem.image!,
                  height: Dimensions.h40,
                ),

                // Text
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.only(top: Dimensions.h5),
                    child: Text(
                      quickItem.title,
                      style: fontStyleMedium12,
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
