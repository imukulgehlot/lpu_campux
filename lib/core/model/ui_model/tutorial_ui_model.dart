import 'package:lpu_campux/core/model/ui_model/unit_info_ui_model.dart';

class ExpansionUIModel {
  final double? completionPercentage;
  final String title;
  final String subtitle;
  final List<ExpandedUIModel> expandedUIModel;

  ExpansionUIModel({
     this.completionPercentage,
    required this.title,
    required this.subtitle,
    required this.expandedUIModel,
  });
}
