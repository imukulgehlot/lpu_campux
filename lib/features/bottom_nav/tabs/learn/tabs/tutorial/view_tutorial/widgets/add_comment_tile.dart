import 'package:flutter/material.dart';
import 'package:lpu_campux/core/constants/app_colors.dart';
import 'package:lpu_campux/core/constants/app_images.dart';
import 'package:lpu_campux/core/constants/app_string.dart';
import 'package:lpu_campux/core/constants/dimensions.dart';
import 'package:lpu_campux/core/widgets/custom_image.dart';
import 'package:lpu_campux/core/widgets/text_field/text_field/my_text_field.dart';

import '../controllers/view_tutorial_controller.dart';

class AddCommentTile extends StatelessWidget {
  final ViewTutorialController controller;

  const AddCommentTile({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: Dimensions.commonHorizontalPadding
            .copyWith(bottom: MediaQuery.viewInsetsOf(context).bottom),
        child: MyTextField(
            textInputType: TextInputType.multiline,
            textCapitalization: TextCapitalization.sentences,
            hintTextColor: AppColors.hintColor,
            textController: controller.addCommentController,
            suffixIcon: IconButton(
              onPressed: controller.addComment,
              visualDensity: VisualDensity.compact,
              icon: CustomSvgAssetImage(
                height: Dimensions.h14,
                image: AppImages.icSend,
                color: AppColors.darkSmokeGray,
              ),
            ),
            textFieldColor: AppColors.whiteColor,
            textFieldUnFocusedBorderColor: AppColors.containerColor,
            hintText: AppString.addComment),
      ),
    );
  }
}
