import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lpu_campux/core/widgets/custom_image.dart';
import 'package:lpu_campux/core/widgets/custom_rich_text_widget.dart';
import 'package:lpu_campux/features/notifications/notifications_screen.dart';

import '../../basic_features.dart';

class LPUSliverAppBar extends StatelessWidget {
  const LPUSliverAppBar({super.key});

  void navigateToNotificationScreen() => Get.to(NotificationsScreen());

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: CustomRichTextWidget.getDualText(
          firstText: AppString.lpu,
          secondText: AppString.campux,
          firstTextStyle: fontStyleBold20.apply(color: AppColors.primaryColor),
          secondTextStyle: fontStyleBold20),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: Dimensions.w10, top: Dimensions.h2),
          child: Row(
            children: [
              IconButton(
                onPressed: navigateToNotificationScreen,
                icon: CustomSvgAssetImage(
                  image: AppImages.icNotification,
                  width: Dimensions.w25,
                  height: Dimensions.w25,
                ),
              ),
              IconButton(
                onPressed: AppUtils.showSignOutDialogue,
                icon: Icon(
                  CupertinoIcons.power,
                  color: Colors.black,
                  size: Dimensions.w25,
                ),
              ),
            ],
          ),
        )
      ],
      floating: true,
    );
  }
}
