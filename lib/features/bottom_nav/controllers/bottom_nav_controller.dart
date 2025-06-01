import 'package:lpu_campux/features/bottom_nav/tabs/explore/explore_tab.dart';
import 'package:lpu_campux/features/bottom_nav/tabs/learn/learn_tab.dart';
import 'package:lpu_campux/features/bottom_nav/widgets/floating_nav_bar.dart';

import '../../../core/basic_features.dart';

class BottomNavController extends GetxController {
  final selectedIndex = 0.obs;

  final screens = [
    ExploreTab(),
    LearnTab(),
    // AcademicsTab(),
    // MyZoneTab(),
  ];

  final destinations = [
    // Explore
    FloatingNavItem(
        filledSVGIcon: AppImages.icExploreFilled,
        outlinedSVGIcon: AppImages.icExploreOutlined,
        label: AppString.explore),

    // Learn
    FloatingNavItem(
        filledSVGIcon: AppImages.icLearnFilled,
        outlinedSVGIcon: AppImages.icLearnOutlined,
        label: AppString.learn),

    // Academics
    // FloatingNavItem(
    //     filledSVGIcon: AppImages.icAcademicsFilled,
    //     outlinedSVGIcon: AppImages.icAcademicsOutlined,
    //     label: AppString.academics),
    //
    // // My Zone
    // FloatingNavItem(
    //     filledSVGIcon: AppImages.icMyZoneFilled,
    //     outlinedSVGIcon: AppImages.icMyZoneOutlined,
    //     label: AppString.myZone),
  ];

  void onDestinationSelected(int index) => selectedIndex.value = index;

  void onPopInvokedWithResult(bool didPop, dynamic _) {
    if (!didPop) {
      if (selectedIndex.value != 0) {
        selectedIndex.value = 0;
      } else {
        AppUtils.showExitPopScopePopup();
      }
    }
  }

}
