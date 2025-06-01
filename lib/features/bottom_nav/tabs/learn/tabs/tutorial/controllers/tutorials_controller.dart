import 'dart:math' show Random;

import 'package:get/get.dart';
import 'package:lpu_campux/core/model/ui_model/tutorial_ui_model.dart';
import 'package:lpu_campux/core/model/ui_model/unit_info_ui_model.dart';
import 'package:lpu_campux/features/bottom_nav/tabs/learn/tabs/tutorial/view_units/view_units_screen.dart';

class TutorialsController extends GetxController {
  List<ExpansionUIModel> tutorials = <ExpansionUIModel>[
    // Machine Learning
    ExpansionUIModel(
      completionPercentage: 60,
      title: 'Machine Learning',
      subtitle: 'ECAP737',
      expandedUIModel: [
        ExpandedUIModel(
          unitNumber: 1,
          durationInMinute: 120,
          lectures: [
            LectureInfo(
              lectureNumber: 1,
              durationInMinute: 30,
              youTubeLink:
                  'https://www.youtube.com/watch?v=i_LwzRVP7bg', // Introduction to Machine Learning
            ),
            LectureInfo(
              lectureNumber: 2,
              durationInMinute: 45,
              youTubeLink:
                  'https://www.youtube.com/watch?v=i_LwzRVP7bg', // Introduction to Machine Learning
            ),
            LectureInfo(
              lectureNumber: 3,
              durationInMinute: 45,
              youTubeLink:
                  'https://www.youtube.com/watch?v=i_LwzRVP7bg', // Introduction to Machine Learning
            ),
          ],
        ),
        ExpandedUIModel(
          unitNumber: 2,
          durationInMinute: 130,
          lectures: [
            LectureInfo(
              lectureNumber: 1,
              durationInMinute: 40,
              youTubeLink:
                  'https://www.youtube.com/watch?v=i_LwzRVP7bg', // Introduction to Machine Learning
            ),
            LectureInfo(
              lectureNumber: 2,
              durationInMinute: 45,
              youTubeLink:
                  'https://www.youtube.com/watch?v=i_LwzRVP7bg', // Introduction to Machine Learning
            ),
            LectureInfo(
              lectureNumber: 3,
              durationInMinute: 45,
              youTubeLink:
                  'https://www.youtube.com/watch?v=i_LwzRVP7bg', // Introduction to Machine Learning
            ),
          ],
        ),
        ExpandedUIModel(
          unitNumber: 3,
          durationInMinute: 135,
          lectures: [
            LectureInfo(
              lectureNumber: 1,
              durationInMinute: 45,
              youTubeLink:
                  'https://www.youtube.com/watch?v=Qly4y3aa_Ic', // Logistic Regression
            ),
            LectureInfo(
              lectureNumber: 2,
              durationInMinute: 50,
              youTubeLink:
                  'https://www.youtube.com/watch?v=7O4dpR9QMIM', // K-Nearest Neighbors
            ),
            LectureInfo(
              lectureNumber: 3,
              durationInMinute: 40,
              youTubeLink:
                  'https://www.youtube.com/watch?v=6M0WLiF3w1o', // Naive Bayes
            ),
          ],
        ),
        ExpandedUIModel(
          unitNumber: 4,
          durationInMinute: 125,
          lectures: [
            LectureInfo(
              lectureNumber: 1,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=i_LwzRVP7bg',
            ),
            LectureInfo(
              lectureNumber: 2,
              durationInMinute: 45,
              youTubeLink: 'https://www.youtube.com/watch?v=i_LwzRVP7bg',
            ),
            LectureInfo(
              lectureNumber: 3,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=i_LwzRVP7bg',
            ),
          ],
        ),
        ExpandedUIModel(
          unitNumber: 5,
          durationInMinute: 140,
          lectures: [
            LectureInfo(
              lectureNumber: 1,
              durationInMinute: 50,
              youTubeLink: 'https://www.youtube.com/watch?v=i_LwzRVP7bg',
            ),
            LectureInfo(
              lectureNumber: 2,
              durationInMinute: 45,
              youTubeLink: 'https://www.youtube.com/watch?v=i_LwzRVP7bg',
            ),
            LectureInfo(
              lectureNumber: 3,
              durationInMinute: 45,
              youTubeLink: 'https://www.youtube.com/watch?v=i_LwzRVP7bg',
            ),
          ],
        ),
        ExpandedUIModel(
          unitNumber: 6,
          durationInMinute: 120,
          lectures: [
            LectureInfo(
              lectureNumber: 1,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=i_LwzRVP7bg',
            ),
            LectureInfo(
              lectureNumber: 2,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=i_LwzRVP7bg',
            ),
            LectureInfo(
              lectureNumber: 3,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=i_LwzRVP7bg',
            ),
          ],
        ),
        ExpandedUIModel(
          unitNumber: 7,
          durationInMinute: 130,
          lectures: [
            LectureInfo(
              lectureNumber: 1,
              durationInMinute: 45,
              youTubeLink: 'https://www.youtube.com/watch?v=i_LwzRVP7bg',
            ),
            LectureInfo(
              lectureNumber: 2,
              durationInMinute: 45,
              youTubeLink: 'https://www.youtube.com/watch?v=i_LwzRVP7bg',
            ),
            LectureInfo(
              lectureNumber: 3,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=i_LwzRVP7bg',
            ),
          ],
        ),
        ExpandedUIModel(
          unitNumber: 8,
          durationInMinute: 125,
          lectures: [
            LectureInfo(
              lectureNumber: 1,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=i_LwzRVP7bg',
            ),
            LectureInfo(
              lectureNumber: 2,
              durationInMinute: 45,
              youTubeLink: 'https://www.youtube.com/watch?v=i_LwzRVP7bg',
            ),
            LectureInfo(
              lectureNumber: 3,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=i_LwzRVP7bg',
            ),
          ],
        ),
        ExpandedUIModel(
          unitNumber: 9,
          durationInMinute: 135,
          lectures: [
            LectureInfo(
              lectureNumber: 1,
              durationInMinute: 45,
              youTubeLink: 'https://www.youtube.com/watch?v=i_LwzRVP7bg',
            ),
            LectureInfo(
              lectureNumber: 2,
              durationInMinute: 50,
              youTubeLink: 'https://www.youtube.com/watch?v=i_LwzRVP7bg',
            ),
            LectureInfo(
              lectureNumber: 3,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=i_LwzRVP7bg',
            ),
          ],
        ),
        ExpandedUIModel(
          unitNumber: 10,
          durationInMinute: 130,
          lectures: [
            LectureInfo(
              lectureNumber: 1,
              durationInMinute: 45,
              youTubeLink: 'https://www.youtube.com/watch?v=i_LwzRVP7bg',
            ),
            LectureInfo(
              lectureNumber: 2,
              durationInMinute: 45,
              youTubeLink: 'https://www.youtube.com/watch?v=i_LwzRVP7bg',
            ),
            LectureInfo(
              lectureNumber: 3,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=i_LwzRVP7bg',
            ),
          ],
        ),
      ],
    ),

    // Advanced Data Visualisation
    ExpansionUIModel(
      completionPercentage: 20,
      title: 'Advanced Data Visualisation',
      subtitle: 'ECAP784',
      expandedUIModel: [
        ExpandedUIModel(
          unitNumber: 1,
          durationInMinute: 110,
          lectures: [
            LectureInfo(
              lectureNumber: 1,
              durationInMinute: 40,
              youTubeLink:
                  'https://www.youtube.com/watch?v=gTu2tHhhlt4', // Introduction to Data Visualization
            ),
            LectureInfo(
              lectureNumber: 2,
              durationInMinute: 35,
              youTubeLink:
                  'https://www.youtube.com/watch?v=gTu2tHhhlt4', // Introduction to Data Visualization
            ),
            LectureInfo(
              lectureNumber: 3,
              durationInMinute: 35,
              youTubeLink:
                  'https://www.youtube.com/watch?v=gTu2tHhhlt4', // Introduction to Data Visualization
            ),
          ],
        ),
        ExpandedUIModel(
          unitNumber: 2,
          durationInMinute: 110,
          lectures: [
            LectureInfo(
              lectureNumber: 1,
              durationInMinute: 40,
              youTubeLink:
                  'https://www.youtube.com/watch?v=gTu2tHhhlt4', // Introduction to Data Visualization
            ),
            LectureInfo(
              lectureNumber: 2,
              durationInMinute: 35,
              youTubeLink:
                  'https://www.youtube.com/watch?v=gTu2tHhhlt4', // Introduction to Data Visualization
            ),
            LectureInfo(
              lectureNumber: 3,
              durationInMinute: 35,
              youTubeLink:
                  'https://www.youtube.com/watch?v=gTu2tHhhlt4', // Introduction to Data Visualization
            ),
          ],
        ),
        ExpandedUIModel(
          unitNumber: 3,
          durationInMinute: 110,
          lectures: [
            LectureInfo(
              lectureNumber: 1,
              durationInMinute: 40,
              youTubeLink:
                  'https://www.youtube.com/watch?v=gTu2tHhhlt4', // Introduction to Data Visualization
            ),
            LectureInfo(
              lectureNumber: 2,
              durationInMinute: 35,
              youTubeLink:
                  'https://www.youtube.com/watch?v=gTu2tHhhlt4', // Introduction to Data Visualization
            ),
            LectureInfo(
              lectureNumber: 3,
              durationInMinute: 35,
              youTubeLink:
                  'https://www.youtube.com/watch?v=gTu2tHhhlt4', // Introduction to Data Visualization
            ),
          ],
        ),
        ExpandedUIModel(
          unitNumber: 4,
          durationInMinute: 110,
          lectures: [
            LectureInfo(
              lectureNumber: 1,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=gTu2tHhhlt4',
            ),
            LectureInfo(
              lectureNumber: 2,
              durationInMinute: 35,
              youTubeLink: 'https://www.youtube.com/watch?v=gTu2tHhhlt4',
            ),
            LectureInfo(
              lectureNumber: 3,
              durationInMinute: 35,
              youTubeLink: 'https://www.youtube.com/watch?v=gTu2tHhhlt4',
            ),
          ],
        ),
        ExpandedUIModel(
          unitNumber: 5,
          durationInMinute: 110,
          lectures: [
            LectureInfo(
              lectureNumber: 1,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=gTu2tHhhlt4',
            ),
            LectureInfo(
              lectureNumber: 2,
              durationInMinute: 35,
              youTubeLink: 'https://www.youtube.com/watch?v=gTu2tHhhlt4',
            ),
            LectureInfo(
              lectureNumber: 3,
              durationInMinute: 35,
              youTubeLink: 'https://www.youtube.com/watch?v=gTu2tHhhlt4',
            ),
          ],
        ),
        ExpandedUIModel(
          unitNumber: 6,
          durationInMinute: 110,
          lectures: [
            LectureInfo(
              lectureNumber: 1,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=gTu2tHhhlt4',
            ),
            LectureInfo(
              lectureNumber: 2,
              durationInMinute: 35,
              youTubeLink: 'https://www.youtube.com/watch?v=gTu2tHhhlt4',
            ),
            LectureInfo(
              lectureNumber: 3,
              durationInMinute: 35,
              youTubeLink: 'https://www.youtube.com/watch?v=gTu2tHhhlt4',
            ),
          ],
        ),
        ExpandedUIModel(
          unitNumber: 7,
          durationInMinute: 110,
          lectures: [
            LectureInfo(
              lectureNumber: 1,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=gTu2tHhhlt4',
            ),
            LectureInfo(
              lectureNumber: 2,
              durationInMinute: 35,
              youTubeLink: 'https://www.youtube.com/watch?v=gTu2tHhhlt4',
            ),
            LectureInfo(
              lectureNumber: 3,
              durationInMinute: 35,
              youTubeLink: 'https://www.youtube.com/watch?v=gTu2tHhhlt4',
            ),
          ],
        ),
        ExpandedUIModel(
          unitNumber: 8,
          durationInMinute: 110,
          lectures: [
            LectureInfo(
              lectureNumber: 1,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=gTu2tHhhlt4',
            ),
            LectureInfo(
              lectureNumber: 2,
              durationInMinute: 35,
              youTubeLink: 'https://www.youtube.com/watch?v=gTu2tHhhlt4',
            ),
            LectureInfo(
              lectureNumber: 3,
              durationInMinute: 35,
              youTubeLink: 'https://www.youtube.com/watch?v=gTu2tHhhlt4',
            ),
          ],
        ),
      ],
    ),

    // C++ Programming
    ExpansionUIModel(
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

    // Python Programming
    ExpansionUIModel(
      completionPercentage: 90,
      title: 'Python',
      subtitle: 'ECAP437',
      expandedUIModel: [
        ExpandedUIModel(
          unitNumber: 1,
          durationInMinute: 115,
          lectures: [
            LectureInfo(
              lectureNumber: 1,
              durationInMinute: 40,
              youTubeLink:
                  'https://www.youtube.com/watch?v=uYjRzbP5aZs', // Python for Beginners
            ),
            LectureInfo(
              lectureNumber: 2,
              durationInMinute: 35,
              youTubeLink:
                  'https://www.youtube.com/watch?v=uYjRzbP5aZs', // Python for Beginners
            ),
            LectureInfo(
              lectureNumber: 3,
              durationInMinute: 40,
              youTubeLink:
                  'https://www.youtube.com/watch?v=uYjRzbP5aZs', // Python for Beginners
            ),
          ],
        ),
        ExpandedUIModel(
          unitNumber: 2,
          durationInMinute: 115,
          lectures: [
            LectureInfo(
              lectureNumber: 1,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=uYjRzbP5aZs',
            ),
            LectureInfo(
              lectureNumber: 2,
              durationInMinute: 35,
              youTubeLink: 'https://www.youtube.com/watch?v=uYjRzbP5aZs',
            ),
            LectureInfo(
              lectureNumber: 3,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=uYjRzbP5aZs',
            ),
          ],
        ),
        ExpandedUIModel(
          unitNumber: 3,
          durationInMinute: 115,
          lectures: [
            LectureInfo(
              lectureNumber: 1,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=uYjRzbP5aZs',
            ),
            LectureInfo(
              lectureNumber: 2,
              durationInMinute: 35,
              youTubeLink: 'https://www.youtube.com/watch?v=uYjRzbP5aZs',
            ),
            LectureInfo(
              lectureNumber: 3,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=uYjRzbP5aZs',
            ),
          ],
        ),
        ExpandedUIModel(
          unitNumber: 4,
          durationInMinute: 115,
          lectures: [
            LectureInfo(
              lectureNumber: 1,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=uYjRzbP5aZs',
            ),
            LectureInfo(
              lectureNumber: 2,
              durationInMinute: 35,
              youTubeLink: 'https://www.youtube.com/watch?v=uYjRzbP5aZs',
            ),
            LectureInfo(
              lectureNumber: 3,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=uYjRzbP5aZs',
            ),
          ],
        ),
        ExpandedUIModel(
          unitNumber: 5,
          durationInMinute: 115,
          lectures: [
            LectureInfo(
              lectureNumber: 1,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=uYjRzbP5aZs',
            ),
            LectureInfo(
              lectureNumber: 2,
              durationInMinute: 35,
              youTubeLink: 'https://www.youtube.com/watch?v=uYjRzbP5aZs',
            ),
            LectureInfo(
              lectureNumber: 3,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=uYjRzbP5aZs',
            ),
          ],
        ),
        ExpandedUIModel(
          unitNumber: 6,
          durationInMinute: 115,
          lectures: [
            LectureInfo(
              lectureNumber: 1,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=uYjRzbP5aZs',
            ),
            LectureInfo(
              lectureNumber: 2,
              durationInMinute: 35,
              youTubeLink: 'https://www.youtube.com/watch?v=uYjRzbP5aZs',
            ),
            LectureInfo(
              lectureNumber: 3,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=uYjRzbP5aZs',
            ),
          ],
        ),
      ],
    ),

    // Linux and Shell Programming
    ExpansionUIModel(
      completionPercentage: 80,
      title: 'Linux and Shell Programming',
      subtitle: 'ECAP280',
      expandedUIModel: [
        ExpandedUIModel(
          unitNumber: 1,
          durationInMinute: 120,
          lectures: [
            LectureInfo(
              lectureNumber: 1,
              durationInMinute: 40,
              youTubeLink:
                  'https://www.youtube.com/watch?v=cQepf9fY6cE', // Linux Basics
            ),
            LectureInfo(
              lectureNumber: 2,
              durationInMinute: 40,
              youTubeLink:
                  'https://www.youtube.com/watch?v=cQepf9fY6cE', // Linux Basics
            ),
            LectureInfo(
              lectureNumber: 3,
              durationInMinute: 40,
              youTubeLink:
                  'https://www.youtube.com/watch?v=cQepf9fY6cE', // Linux Basics
            ),
          ],
        ),
        ExpandedUIModel(
          unitNumber: 2,
          durationInMinute: 120,
          lectures: [
            LectureInfo(
              lectureNumber: 1,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=cQepf9fY6cE',
            ),
            LectureInfo(
              lectureNumber: 2,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=cQepf9fY6cE',
            ),
            LectureInfo(
              lectureNumber: 3,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=cQepf9fY6cE',
            ),
          ],
        ),
        ExpandedUIModel(
          unitNumber: 3,
          durationInMinute: 120,
          lectures: [
            LectureInfo(
              lectureNumber: 1,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=cQepf9fY6cE',
            ),
            LectureInfo(
              lectureNumber: 2,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=cQepf9fY6cE',
            ),
            LectureInfo(
              lectureNumber: 3,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=cQepf9fY6cE',
            ),
          ],
        ),
        ExpandedUIModel(
          unitNumber: 4,
          durationInMinute: 120,
          lectures: [
            LectureInfo(
              lectureNumber: 1,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=cQepf9fY6cE',
            ),
            LectureInfo(
              lectureNumber: 2,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=cQepf9fY6cE',
            ),
            LectureInfo(
              lectureNumber: 3,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=cQepf9fY6cE',
            ),
          ],
        ),
        ExpandedUIModel(
          unitNumber: 5,
          durationInMinute: 120,
          lectures: [
            LectureInfo(
              lectureNumber: 1,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=cQepf9fY6cE',
            ),
            LectureInfo(
              lectureNumber: 2,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=cQepf9fY6cE',
            ),
            LectureInfo(
              lectureNumber: 3,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=cQepf9fY6cE',
            ),
          ],
        ),
        ExpandedUIModel(
          unitNumber: 6,
          durationInMinute: 120,
          lectures: [
            LectureInfo(
              lectureNumber: 1,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=cQepf9fY6cE',
            ),
            LectureInfo(
              lectureNumber: 2,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=cQepf9fY6cE',
            ),
            LectureInfo(
              lectureNumber: 3,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=cQepf9fY6cE',
            ),
          ],
        ),
        ExpandedUIModel(
          unitNumber: 7,
          durationInMinute: 120,
          lectures: [
            LectureInfo(
              lectureNumber: 1,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=cQepf9fY6cE',
            ),
            LectureInfo(
              lectureNumber: 2,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=cQepf9fY6cE',
            ),
            LectureInfo(
              lectureNumber: 3,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=cQepf9fY6cE',
            ),
          ],
        ),
        ExpandedUIModel(
          unitNumber: 8,
          durationInMinute: 120,
          lectures: [
            LectureInfo(
              lectureNumber: 1,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=cQepf9fY6cE',
            ),
            LectureInfo(
              lectureNumber: 2,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=cQepf9fY6cE',
            ),
            LectureInfo(
              lectureNumber: 3,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=cQepf9fY6cE',
            ),
          ],
        ),
      ],
    ),

    // Software Engineering
    ExpansionUIModel(
      completionPercentage: 70,
      title: 'Software Engineering',
      subtitle: 'CSE505',
      expandedUIModel: [
        ExpandedUIModel(
          unitNumber: 1,
          durationInMinute: 115,
          lectures: [
            LectureInfo(
              lectureNumber: 1,
              durationInMinute: 40,
              youTubeLink:
                  'https://www.youtube.com/watch?v=8jH07r6135o', // Software Engineering Intro
            ),
            LectureInfo(
              lectureNumber: 2,
              durationInMinute: 35,
              youTubeLink:
                  'https://www.youtube.com/watch?v=8jH07r6135o', // Software Engineering Intro
            ),
            LectureInfo(
              lectureNumber: 3,
              durationInMinute: 40,
              youTubeLink:
                  'https://www.youtube.com/watch?v=8jH07r6135o', // Software Engineering Intro
            ),
          ],
        ),
        ExpandedUIModel(
          unitNumber: 2,
          durationInMinute: 115,
          lectures: [
            LectureInfo(
              lectureNumber: 1,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=8jH07r6135o',
            ),
            LectureInfo(
              lectureNumber: 2,
              durationInMinute: 35,
              youTubeLink: 'https://www.youtube.com/watch?v=8jH07r6135o',
            ),
            LectureInfo(
              lectureNumber: 3,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=8jH07r6135o',
            ),
          ],
        ),
        ExpandedUIModel(
          unitNumber: 3,
          durationInMinute: 115,
          lectures: [
            LectureInfo(
              lectureNumber: 1,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=8jH07r6135o',
            ),
            LectureInfo(
              lectureNumber: 2,
              durationInMinute: 35,
              youTubeLink: 'https://www.youtube.com/watch?v=8jH07r6135o',
            ),
            LectureInfo(
              lectureNumber: 3,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=8jH07r6135o',
            ),
          ],
        ),
        ExpandedUIModel(
          unitNumber: 4,
          durationInMinute: 115,
          lectures: [
            LectureInfo(
              lectureNumber: 1,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=8jH07r6135o',
            ),
            LectureInfo(
              lectureNumber: 2,
              durationInMinute: 35,
              youTubeLink: 'https://www.youtube.com/watch?v=8jH07r6135o',
            ),
            LectureInfo(
              lectureNumber: 3,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=8jH07r6135o',
            ),
          ],
        ),
        ExpandedUIModel(
          unitNumber: 5,
          durationInMinute: 115,
          lectures: [
            LectureInfo(
              lectureNumber: 1,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=8jH07r6135o',
            ),
            LectureInfo(
              lectureNumber: 2,
              durationInMinute: 35,
              youTubeLink: 'https://www.youtube.com/watch?v=8jH07r6135o',
            ),
            LectureInfo(
              lectureNumber: 3,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=8jH07r6135o',
            ),
          ],
        ),
        ExpandedUIModel(
          unitNumber: 6,
          durationInMinute: 115,
          lectures: [
            LectureInfo(
              lectureNumber: 1,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=8jH07r6135o',
            ),
            LectureInfo(
              lectureNumber: 2,
              durationInMinute: 35,
              youTubeLink: 'https://www.youtube.com/watch?v=8jH07r6135o',
            ),
            LectureInfo(
              lectureNumber: 3,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=8jH07r6135o',
            ),
          ],
        ),
      ],
    ),

    // Web Development
    ExpansionUIModel(
      completionPercentage: 60,
      title: 'Web Development',
      subtitle: 'CSE606',
      expandedUIModel: [
        ExpandedUIModel(
          unitNumber: 1,
          durationInMinute: 125,
          lectures: [
            LectureInfo(
              lectureNumber: 1,
              durationInMinute: 45,
              youTubeLink:
                  'https://www.youtube.com/watch?v=ZxKM3DCV2kE', // HTML Basics
            ),
            LectureInfo(
              lectureNumber: 2,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=ZxKM3DCV2kE',
            ),
            LectureInfo(
              lectureNumber: 3,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=ZxKM3DCV2kE',
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
              youTubeLink: 'https://www.youtube.com/watch?v=ZxKM3DCV2kE',
            ),
            LectureInfo(
              lectureNumber: 2,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=ZxKM3DCV2kE',
            ),
            LectureInfo(
              lectureNumber: 3,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=ZxKM3DCV2kE',
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
              youTubeLink: 'https://www.youtube.com/watch?v=ZxKM3DCV2kE',
            ),
            LectureInfo(
              lectureNumber: 2,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=ZxKM3DCV2kE',
            ),
            LectureInfo(
              lectureNumber: 3,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=ZxKM3DCV2kE',
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
              youTubeLink: 'https://www.youtube.com/watch?v=ZxKM3DCV2kE',
            ),
            LectureInfo(
              lectureNumber: 2,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=ZxKM3DCV2kE',
            ),
            LectureInfo(
              lectureNumber: 3,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=ZxKM3DCV2kE',
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
              youTubeLink: 'https://www.youtube.com/watch?v=ZxKM3DCV2kE',
            ),
            LectureInfo(
              lectureNumber: 2,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=ZxKM3DCV2kE',
            ),
            LectureInfo(
              lectureNumber: 3,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=ZxKM3DCV2kE',
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
              youTubeLink: 'https://www.youtube.com/watch?v=ZxKM3DCV2kE',
            ),
            LectureInfo(
              lectureNumber: 2,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=ZxKM3DCV2kE',
            ),
            LectureInfo(
              lectureNumber: 3,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=ZxKM3DCV2kE',
            ),
          ],
        ),
        ExpandedUIModel(
          unitNumber: 7,
          durationInMinute: 125,
          lectures: [
            LectureInfo(
              lectureNumber: 1,
              durationInMinute: 45,
              youTubeLink: 'https://www.youtube.com/watch?v=ZxKM3DCV2kE',
            ),
            LectureInfo(
              lectureNumber: 2,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=ZxKM3DCV2kE',
            ),
            LectureInfo(
              lectureNumber: 3,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=ZxKM3DCV2kE',
            ),
          ],
        ),

      ],
    ),

    // Artificial Intelligence
    ExpansionUIModel(
      completionPercentage: 50,
      title: 'Artificial Intelligence',
      subtitle: 'CSE707',
      expandedUIModel: [
        ExpandedUIModel(
          unitNumber: 1,
          durationInMinute: 120,
          lectures: [
            LectureInfo(
              lectureNumber: 1,
              durationInMinute: 40,
              youTubeLink:
                  'https://www.youtube.com/watch?v=JMUxmLyrhSk', // Introduction to AI
            ),
            LectureInfo(
              lectureNumber: 2,
              durationInMinute: 40,
              youTubeLink:
              'https://www.youtube.com/watch?v=JMUxmLyrhSk', // Introduction to AI
            ),
            LectureInfo(
              lectureNumber: 3,
              durationInMinute: 40,
              youTubeLink:
              'https://www.youtube.com/watch?v=JMUxmLyrhSk', // Introduction to AI
            ),
          ],
        ),
        ExpandedUIModel(
          unitNumber: 2,
          durationInMinute: 120,
          lectures: [
            LectureInfo(
              lectureNumber: 1,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=JMUxmLyrhSk',
            ),
            LectureInfo(
              lectureNumber: 2,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=JMUxmLyrhSk',
            ),
            LectureInfo(
              lectureNumber: 3,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=JMUxmLyrhSk',
            ),
          ],
        ),
        ExpandedUIModel(
          unitNumber: 3,
          durationInMinute: 120,
          lectures: [
            LectureInfo(
              lectureNumber: 1,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=JMUxmLyrhSk',
            ),
            LectureInfo(
              lectureNumber: 2,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=JMUxmLyrhSk',
            ),
            LectureInfo(
              lectureNumber: 3,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=JMUxmLyrhSk',
            ),
          ],
        ),
        ExpandedUIModel(
          unitNumber: 4,
          durationInMinute: 120,
          lectures: [
            LectureInfo(
              lectureNumber: 1,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=JMUxmLyrhSk',
            ),
            LectureInfo(
              lectureNumber: 2,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=JMUxmLyrhSk',
            ),
            LectureInfo(
              lectureNumber: 3,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=JMUxmLyrhSk',
            ),
          ],
        ),
        ExpandedUIModel(
          unitNumber: 5,
          durationInMinute: 120,
          lectures: [
            LectureInfo(
              lectureNumber: 1,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=JMUxmLyrhSk',
            ),
            LectureInfo(
              lectureNumber: 2,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=JMUxmLyrhSk',
            ),
            LectureInfo(
              lectureNumber: 3,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=JMUxmLyrhSk',
            ),
          ],
        ),
        ExpandedUIModel(
          unitNumber: 6,
          durationInMinute: 120,
          lectures: [
            LectureInfo(
              lectureNumber: 1,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=JMUxmLyrhSk',
            ),
            LectureInfo(
              lectureNumber: 2,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=JMUxmLyrhSk',
            ),
            LectureInfo(
              lectureNumber: 3,
              durationInMinute: 40,
              youTubeLink: 'https://www.youtube.com/watch?v=JMUxmLyrhSk',
            ),
          ],
        ),

      ],
    ),
  ];

  void navigateToViewUnitScreen(ExpansionUIModel tutorial) =>
      Get.to(() => ViewUnitsScreen(tutorial: tutorial));


  List<ExpandedUIModel> generateUnits({
    required String subject,
    required String playlistUrl,
  }) {
    final random = Random();
    return List.generate(14, (unitIndex) {
      final lectureCount = 5 + random.nextInt(6); // 5 to 10 lectures
      final lectures = List.generate(lectureCount, (lectureIndex) {
        final duration = 10 + random.nextInt(41); // 10 to 50 minutes
        return LectureInfo(
          lectureNumber: lectureIndex + 1,
          durationInMinute: duration,
          youTubeLink: playlistUrl,
        );
      });
      final totalDuration = lectures.fold<int>(
          0, (sum, lecture) => sum + lecture.durationInMinute);
      return ExpandedUIModel(
        unitNumber: unitIndex + 1,
        durationInMinute: totalDuration,
        lectures: lectures,
      );
    });
  }
}
