import 'package:lpu_campux/core/basic_features.dart';
import 'package:lpu_campux/core/core_screens/pdf_viewer_screen.dart';
import 'package:lpu_campux/core/model/ui_model/carousel_info_model.dart';
import 'package:lpu_campux/core/model/ui_model/category_model.dart';
import 'package:lpu_campux/core/model/ui_model/tutorial_ui_model.dart';
import 'package:lpu_campux/core/model/ui_model/unit_info_ui_model.dart';
import 'package:lpu_campux/core/network/network_constant.dart';
import 'package:lpu_campux/features/announcements/announcement_screen.dart';
import 'package:lpu_campux/features/bottom_nav/controllers/bottom_nav_controller.dart';
import 'package:lpu_campux/features/bottom_nav/tabs/learn/tabs/tutorial/view_units/view_units_screen.dart';
import 'package:lpu_campux/features/id_card/identity_card.dart';

class ExploreController extends GetxController {
  final List<CarouselInfoModel> carouselItems = [
    CarouselInfoModel(
        title: "Hunar 2024",
        imagePath: AppImages.imgCarousel1,
        description: "37th Nation Inter-University Youth Festival"),
    CarouselInfoModel(
        title: "Secure Presence",
        imagePath: AppImages.imgCarousel2,
        description: "Trained staff ensure safety."),
    CarouselInfoModel(
        title: "Global Harmony",
        imagePath: AppImages.imgCarousel3,
        description: "LPU celebrates global diversity in a vibrant hub."),
    CarouselInfoModel(
        title: "Stay at LPU",
        imagePath: AppImages.imgCarousel4,
        description: "Green campus offers an inspiring environment."),
  ];
  late final quickAccessItems = [
    CommonUIModel(
      title: AppString.announcements,
      image: AppImages.icAnnouncement,
      onTap: navigateToAnnouncementScreen,
    ),
    CommonUIModel(
      title: AppString.eTutorials,
      image: AppImages.icETutorial,
      onTap: navigateToTutorials,
    ),
    CommonUIModel(
        title: AppString.programmeGuide,
        image: AppImages.icProgrammeGuide,
        onTap: navigateToProgrammerGuide),
    CommonUIModel(
      title: AppString.identityCard,
      image: AppImages.icIdentityCard,
      onTap: navigateToIdentityCard,
    ),
  ];

  void navigateToProgrammerGuide() => Get.to(PDFViewerScreen(
      filePath: NetworkConstant.programmeGuide,
      title: AppString.mca,
      subtitle: AppString.programmeGuide));

  void navigateToTutorials() {
    final bottomNavController = Get.find<BottomNavController>();

    bottomNavController.selectedIndex(1);
  }

  void navigateToAnnouncementScreen() => Get.to(AnnouncementScreen());

  void navigateToIdentityCard() => Get.to(IdentityCardScreen());

  void navigateToContinueWithScreen() => Get.to(() => ViewUnitsScreen(
        tutorial: ExpansionUIModel(
          completionPercentage: 0,
          title: 'C++ Programming',
          subtitle: 'ECAP826',
          expandedUIModel: [
            ExpandedUIModel(
              unitNumber: 1,
              durationInMinute: 125,
              lectures: [
                LectureInfo(
                  lectureNumber: 1,
                  durationInMinute: 45,
                  youTubeLink:
                      'https://www.youtube.com/watch?v=ZzaPdXTrSb8', // Introduction to C++
                ),
                LectureInfo(
                  lectureNumber: 2,
                  durationInMinute: 40,
                  youTubeLink:
                      'https://www.youtube.com/watch?v=ZzaPdXTrSb8', // Introduction to C++
                ),
                LectureInfo(
                  lectureNumber: 3,
                  durationInMinute: 40,
                  youTubeLink:
                      'https://www.youtube.com/watch?v=ZzaPdXTrSb8', // Introduction to C++
                ),
              ],
            ),
            ExpandedUIModel(
              unitNumber: 2,
              durationInMinute: 125,
              lectures: [
                LectureInfo(
                  lectureNumber: 1,
                  durationInMinute: 45,
                  youTubeLink: 'https://www.youtube.com/watch?v=ZzaPdXTrSb8',
                ),
                LectureInfo(
                  lectureNumber: 2,
                  durationInMinute: 40,
                  youTubeLink: 'https://www.youtube.com/watch?v=ZzaPdXTrSb8',
                ),
                LectureInfo(
                  lectureNumber: 3,
                  durationInMinute: 40,
                  youTubeLink: 'https://www.youtube.com/watch?v=ZzaPdXTrSb8',
                ),
              ],
            ),
            ExpandedUIModel(
              unitNumber: 3,
              durationInMinute: 125,
              lectures: [
                LectureInfo(
                  lectureNumber: 1,
                  durationInMinute: 45,
                  youTubeLink: 'https://www.youtube.com/watch?v=ZzaPdXTrSb8',
                ),
                LectureInfo(
                  lectureNumber: 2,
                  durationInMinute: 40,
                  youTubeLink: 'https://www.youtube.com/watch?v=ZzaPdXTrSb8',
                ),
                LectureInfo(
                  lectureNumber: 3,
                  durationInMinute: 40,
                  youTubeLink: 'https://www.youtube.com/watch?v=ZzaPdXTrSb8',
                ),
              ],
            ),
            ExpandedUIModel(
              unitNumber: 4,
              durationInMinute: 125,
              lectures: [
                LectureInfo(
                  lectureNumber: 1,
                  durationInMinute: 45,
                  youTubeLink: 'https://www.youtube.com/watch?v=ZzaPdXTrSb8',
                ),
                LectureInfo(
                  lectureNumber: 2,
                  durationInMinute: 40,
                  youTubeLink: 'https://www.youtube.com/watch?v=ZzaPdXTrSb8',
                ),
                LectureInfo(
                  lectureNumber: 3,
                  durationInMinute: 40,
                  youTubeLink: 'https://www.youtube.com/watch?v=ZzaPdXTrSb8',
                ),
              ],
            ),
            ExpandedUIModel(
              unitNumber: 5,
              durationInMinute: 125,
              lectures: [
                LectureInfo(
                  lectureNumber: 1,
                  durationInMinute: 45,
                  youTubeLink: 'https://www.youtube.com/watch?v=ZzaPdXTrSb8',
                ),
                LectureInfo(
                  lectureNumber: 2,
                  durationInMinute: 40,
                  youTubeLink: 'https://www.youtube.com/watch?v=ZzaPdXTrSb8',
                ),
                LectureInfo(
                  lectureNumber: 3,
                  durationInMinute: 40,
                  youTubeLink: 'https://www.youtube.com/watch?v=ZzaPdXTrSb8',
                ),
              ],
            ),
            ExpandedUIModel(
              unitNumber: 6,
              durationInMinute: 125,
              lectures: [
                LectureInfo(
                  lectureNumber: 1,
                  durationInMinute: 45,
                  youTubeLink: 'https://www.youtube.com/watch?v=ZzaPdXTrSb8',
                ),
                LectureInfo(
                  lectureNumber: 2,
                  durationInMinute: 40,
                  youTubeLink: 'https://www.youtube.com/watch?v=ZzaPdXTrSb8',
                ),
                LectureInfo(
                  lectureNumber: 3,
                  durationInMinute: 40,
                  youTubeLink: 'https://www.youtube.com/watch?v=ZzaPdXTrSb8',
                ),
              ],
            ),
          ],
        ),
      ));
}
