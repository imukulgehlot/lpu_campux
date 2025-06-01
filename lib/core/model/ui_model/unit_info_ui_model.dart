class ExpandedUIModel {
  final String? title;
  final String? subtitle;
  final String? icon;
  final Function(int index)? onTap;
  final String? url;
  final int? unitNumber;
  final int? durationInMinute;
  final List<LectureInfo> lectures;
  final List<ExpandedUIModel> expandedUIModel;

  ExpandedUIModel({
    this.subtitle,
    this.unitNumber,
    this.durationInMinute,
    this.lectures = const [],
    this.expandedUIModel = const [],
    this.title,
    this.icon, this.onTap,
    this.url,
  });
}

class LectureInfo {
  final int lectureNumber;
  final int durationInMinute;
  final String youTubeLink;

  LectureInfo(
      {required this.lectureNumber,
      required this.durationInMinute,
      required this.youTubeLink});
}
