import 'package:flutter/material.dart';
import 'package:lpu_campux/core/model/ui_model/notification_ui_model.dart';
import 'package:lpu_campux/core/utils/extension.dart';
import 'package:lpu_campux/core/widgets/custom_image.dart'
    show CustomSvgAssetImage;

import '../../../core/basic_features.dart';

class NotificationTile extends StatelessWidget {
  final NotificationUIModel notification;

  const NotificationTile({super.key, required this.notification});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Dimensions.h5),
      child: DecoratedBox(
          decoration: BoxDecoration(
            color: AppColors.containerColor,
            borderRadius: BorderRadius.circular(Dimensions.commonRadius),
          ),
          child: Padding(
            padding: EdgeInsets.all(Dimensions.w12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: Dimensions.w12,
              children: [
                // SOS Icon
                CustomSvgAssetImage(
                  image: AppImages.icNotificationLead,
                  width: Dimensions.w32,
                  height: Dimensions.w32,
                ),

                // Alert Title & Time
                Flexible(
                  child: Column(
                    children: [
                      // Alert Title & Time
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Notification Title
                            Flexible(
                              child: Text(
                                notification.title,
                                style: fontStyleMedium15,
                              ),
                            ),

                            // Time
                            Text(
                              notification.createdAt.chatTime(),
                              style: fontStyleRegular12.apply(
                                  color: AppColors.hintColor),
                            ),
                          ]),

                      // Notification Message
                      Text(
                        notification.description,
                        style: fontStyleRegular14.apply(
                            color: AppColors.textGreyColor),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
