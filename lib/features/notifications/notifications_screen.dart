import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lpu_campux/core/constants/app_string.dart';
import 'package:lpu_campux/core/constants/dimensions.dart';
import 'package:lpu_campux/core/widgets/custom_appbar.dart';
import 'package:lpu_campux/features/notifications/widgets/notification_tile.dart';

import 'controllers/notifications_controller.dart';

class NotificationsScreen extends GetView<NotificationController> {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.defaultAppBarWithBackButton(
        title: AppString.notifications,
      ),
      body: ListView.builder(
        itemCount: controller.notifications.length,
        padding:
            EdgeInsets.symmetric(horizontal: Dimensions.commonPaddingForScreen)
                .copyWith(top: Dimensions.h8, bottom: Dimensions.h150),
        itemBuilder: (context, index) => NotificationTile(
            notification: controller.notifications[index]),
      ),
    );
  }
}
