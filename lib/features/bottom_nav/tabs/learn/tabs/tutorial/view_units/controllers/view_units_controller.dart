import 'package:get/get.dart';
import 'package:lpu_campux/core/model/ui_model/tutorial_ui_model.dart';
import 'package:lpu_campux/features/bottom_nav/tabs/learn/tabs/tutorial/view_tutorial/view_tutorial_screen.dart';

class ViewUnitsController extends GetxController {
  late final ExpansionUIModel tutorial;

  void navigateToTutorialScreen(
          {required int unitIndex, required int lectureIndex}) =>
      Get.to(ViewTutorialScreen(
        tutorial: tutorial,
        unitIndex: unitIndex,
        lectureIndex: lectureIndex,
      ));


}
