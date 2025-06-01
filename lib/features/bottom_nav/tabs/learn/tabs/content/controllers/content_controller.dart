import 'package:get/get.dart';
import 'package:lpu_campux/core/core_screens/pdf_viewer_screen.dart';
import 'package:lpu_campux/core/model/ui_model/unit_info_ui_model.dart';
import 'package:lpu_campux/core/utils/logger_util.dart';

class ContentController extends GetxController {
  List<ExpandedUIModel> semesters = <ExpandedUIModel>[
    // Sem 1
    ExpandedUIModel(
      title: 'Semester - 1',
      subtitle: '6 Subjects',
      expandedUIModel: [
        ExpandedUIModel(
            title: 'Software Engineering Practices',
            url:
                'https://ums.lpu.in/econnect/IpSyllabusSchemas/7930_ECAP437_SOFTWARE_ENGINEERING_PRACTICES.pdf'),
        ExpandedUIModel(
          title: 'Object Oriented Programming Using C++',
          url:
              'https://ums.lpu.in/econnect/IpSyllabusSchemas/8414_ECAP444_Object_%20Oriented_Programming_Using_C%20Plus%20Plus.pdf',
        ),
        ExpandedUIModel(
          title: 'Data Warehousing And Data Mining',
          url:
              'https://ums.lpu.in/econnect/IpSyllabusSchemas/7931_ECAP446_DATA_WAREHOUSING_AND_DATA_MINING.pdf',
        ),
        ExpandedUIModel(
          title: 'Linux And Shell',
          url:
              'https://ums.lpu.in/econnect/IpSyllabusSchemas/7961_ECAP448_LINUX_AND_SHELL_SCRIPTING.pdf',
        ),
        ExpandedUIModel(
          title: 'Data Communication And Networking',
          url:
              'https://ums.lpu.in/econnect/IpSyllabusSchemas/7973_ECAP453_DATA_COMMUNICATION_AND_NETWORKING.pdf',
        ),
        ExpandedUIModel(
          title: 'Analytical Skills-I',
          url:
              'https://ums.lpu.in/econnect/IpSyllabusSchemas/7975_EPEA515_ANALYTICAL_SKILLS-I.pdf',
        ),
      ],
    ),

    // Sem 2
    ExpandedUIModel(
      title: 'Semester - 2',
      subtitle: '7 Subjects',
      expandedUIModel: [
        ExpandedUIModel(
            title: 'Introduction to Big Data',
            url:
                'https://ums.lpu.in/econnect/IpSyllabusSchemas/8037_ECAP456_INTRODUCTION_TO_BIG_DATA.pdf'),
        ExpandedUIModel(
            title: 'Cloud Computing',
            url:
                'https://ums.lpu.in/econnect/IpSyllabusSchemas/8155_ECAP470_CLOUD_COMPUTING.pdf'),
        ExpandedUIModel(
            title: 'Web Technologies',
            url:
                'https://ums.lpu.in/econnect/IpSyllabusSchemas/8197_ECAP472_WEB_TECHNOLOGIES.pdf'),
        ExpandedUIModel(
            title: 'Programming in Java',
            url:
                'https://ums.lpu.in/econnect/IpSyllabusSchemas/8156_ECAP615_PROGRAMMING_IN_JAVA.pdf'),
        ExpandedUIModel(
            title: 'Advanced Data Structures',
            url:
                'https://ums.lpu.in/econnect/IpSyllabusSchemas/8239_ECAP770_ADVANCED_DATA_STRUCTURES.pdf'),
        ExpandedUIModel(
            title: 'Mathematical Foundation for Computer Science',
            url:
                'https://ums.lpu.in/econnect/IpSyllabusSchemas/8249_EMTH403_MATHEMATICAL_FOUNDATION_FOR_COMPUTER_SCIENCE.pdf'),
        ExpandedUIModel(
            title: 'Analytical Skills-II',
            url:
                'https://ums.lpu.in/econnect/IpSyllabusSchemas/8159_EPEA516_ANALYTICAL_SKILLS-II.pdf'),
      ],
    ),

    // Sem 3
    ExpandedUIModel(
        title: 'Semester - 3',
        subtitle: '6 Subjects',
        expandedUIModel: [
          ExpandedUIModel(
              title: 'Algorithm Design and Analysis',
              url:
                  'https://ums.lpu.in/econnect/IpSyllabusSchemas/8409_ECAP538_ALGORITHM_DESIGN_AND_ANALYSIS.pdf'),
          ExpandedUIModel(
              title: 'Programming in Python',
              url:
                  'https://ums.lpu.in/econnect/IpSyllabusSchemas/8423_ECAP776_PROGRAMMING_IN_PYTHON.pdf'),
          ExpandedUIModel(
              title: 'Probability and Statistics',
              url:
                  'https://ums.lpu.in/econnect/IpSyllabusSchemas/8025_ECAP790_PROBABILITY_AND_STATISTICS.pdf'),
          ExpandedUIModel(
              title: 'Data Science Toolbox',
              url:
                  'https://ums.lpu.in/econnect/IpSyllabusSchemas/8438_ECAP792_DATA_SCIENCE_TOOLBOX.pdf'),
          ExpandedUIModel(
              title: 'Marketing Management',
              url:
                  'https://ums.lpu.in/econnect/IpSyllabusSchemas/8759_EMKT503_MARKETING_MANAGEMENT.pdf'),
          ExpandedUIModel(
              title: 'Consumer Behaviour',
              url:
                  'https://ums.lpu.in/econnect/IpSyllabusSchemas/8193_EMKT509_CONSUMER_BEHAVIOUR.pdf'),
          ExpandedUIModel(
              title: 'Organisational Behaviour and Human Resource Dynamics',
              url:
                  'https://ums.lpu.in/econnect/IpSyllabusSchemas/8380_EMGN581_ORGANIZATIONAL_BEHAVIOUR_AND_HUMAN_RESOURCE_DYNAMICS.pdf'),
        ]),

    // Sem 4
    ExpandedUIModel(
        title: 'Semester - 4',
        subtitle: '6 Subjects',
        expandedUIModel: [
          ExpandedUIModel(
              title: 'Machine Learning',
              url:
                  'https://ums.lpu.in/econnect/IpSyllabusSchemas/8617_ECAP737_MACHINE%20LEARNING.pdf'),
          ExpandedUIModel(
              title: 'Advance Data Visualization',
              url:
                  'https://ums.lpu.in/econnect/IpSyllabusSchemas/8499_ECAP794_ADVANCE_DATA_VISUALIZATION.pdf'),
          ExpandedUIModel(
              title: 'Software Project Management',
              url:
                  'https://ums.lpu.in/econnect/IpSyllabusSchemas/8664_ECAP951_SOFTWARE_PROJECT_MANAGEMENT.pdf'),
          ExpandedUIModel(
              title: 'Digital and Social Media Marketing',
              url:
                  'https://ums.lpu.in/econnect/IpSyllabusSchemas/8290_EMKT505_DIGITAL_AND_SOCIAL_MEDIA_MARKETING.pdf'),
          ExpandedUIModel(
              title: 'Customer Relationship Management',
              url:
                  'https://ums.lpu.in/econnect/IpSyllabusSchemas/8431_EMKT517_CUSTOMER_RELATIONSHIP_MANAGEMENT.pdf'),
        ]),
  ];

  void navigateToPDFViewer(
      {required int collapseTileIndex, required int expandedTileIndex}) {
    final semesterNumber = semesters[collapseTileIndex].title;
    final subject =
        semesters[collapseTileIndex].expandedUIModel[expandedTileIndex].title;
    final pdfURL =
        semesters[collapseTileIndex].expandedUIModel[expandedTileIndex].url;

    logger.i('Subject: $subject\nnPDF - $pdfURL');

    Get.to(PDFViewerScreen(
      subtitle: semesterNumber ?? '',
      title: subject ?? '',
      filePath: pdfURL ?? '',
    ));
  }
}
