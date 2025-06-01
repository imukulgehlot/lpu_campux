import 'package:flutter/material.dart';
import 'package:lpu_campux/core/basic_features.dart';
import 'package:lpu_campux/core/widgets/custom_appbar.dart';
import 'package:lpu_campux/features/announcements/controllers/announcement_controller.dart';
import 'package:lpu_campux/features/announcements/widgets/announcement_tile.dart';

class AnnouncementScreen extends GetView<AnnouncementController> {
  const AnnouncementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar.defaultAppBarWithBackButton(
          title: AppString.announcements,
        ),
        body: ListView.builder(
          itemCount: controller.announcements.length,
          itemBuilder: (context, index) =>
              AnnouncementTile(announcement: controller.announcements[index]),
        ));
  }
}
