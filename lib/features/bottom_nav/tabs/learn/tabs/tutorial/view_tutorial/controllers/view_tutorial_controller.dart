import 'package:flutter/material.dart';
import 'package:lpu_campux/core/basic_features.dart';
import 'package:lpu_campux/core/model/ui_model/comments_ui_model.dart';

class ViewTutorialController extends GetxController {
  late final String subjectName;
  final addCommentController = TextEditingController();

  late final comments = <CommentsUIModel>[
    CommentsUIModel(
      userName: 'Elon Musk',
      comment:
          'One of the finest to get started with the already hyped $subjectName.',
      dateLabel: '5m now',
    ),
    CommentsUIModel(
      userName: 'Iyer Idli',
      comment:
          'Clean, crisp, and surprisingly addictive — $subjectName just got easier to get into',
      dateLabel: '2h ago',
    ),
  ].obs;

  @override
  void onClose() {
    addCommentController.dispose();

    super.onClose();
  }

  // Add comment
  void addComment() {
    final newComment = addCommentController.text;
    if (newComment == '') {
      AppUtils.showSnackBar(
        title: 'Comment cannot be empty',
        message: 'Please enter a comment before posting!',
      );
      return;
    }
    AppUtils.closeKeyboard();
    addCommentController.clear();

    comments.insert(
      0,
      CommentsUIModel(
        userName: 'Mukul Gehlot',
        comment: newComment,
        dateLabel: 'just now',
      ),
    );

    comments.refresh();
  }
}
