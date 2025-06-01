import 'package:get/get.dart';
import 'package:lpu_campux/features/bottom_nav/controllers/bottom_nav_controller.dart';
import 'package:lpu_campux/features/bottom_nav/tabs/academics/controllers/academics_controller.dart';
import 'package:lpu_campux/features/bottom_nav/tabs/explore/controllers/explore_controller.dart';
import 'package:lpu_campux/features/bottom_nav/tabs/learn/controllers/learn_controller.dart';
import 'package:lpu_campux/features/bottom_nav/tabs/learn/tabs/content/controllers/content_controller.dart';
import 'package:lpu_campux/features/bottom_nav/tabs/learn/tabs/tutorial/controllers/tutorials_controller.dart';
import 'package:lpu_campux/features/bottom_nav/tabs/my_zone/controllers/my_zone_controller.dart';
import 'package:lpu_campux/features/notifications/controllers/notifications_controller.dart';
import 'package:lpu_campux/features/onboarding/controllers/onboarding_controller.dart';
import 'package:lpu_campux/features/sign_in/controllers/sign_in_controller.dart';

import '../../features/announcements/controllers/announcement_controller.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignInController>(() => SignInController(), fenix: true);
    Get.lazyPut<OnBoardingController>(() => OnBoardingController(),
        fenix: true);
    Get.lazyPut<BottomNavController>(() => BottomNavController(), fenix: true);
    Get.lazyPut<AnnouncementController>(() => AnnouncementController(),
        fenix: true);
    Get.lazyPut<NotificationController>(() => NotificationController(),
        fenix: true);
    Get.lazyPut<ExploreController>(() => ExploreController(), fenix: true);
    Get.lazyPut<LearnController>(() => LearnController(), fenix: true);
    Get.lazyPut<AcademicsController>(() => AcademicsController(), fenix: true);
    Get.lazyPut<MyZoneController>(() => MyZoneController(), fenix: true);
    Get.lazyPut<TutorialsController>(() => TutorialsController(), fenix: true);
    Get.lazyPut<ContentController>(() => ContentController(), fenix: true);
  }
}
