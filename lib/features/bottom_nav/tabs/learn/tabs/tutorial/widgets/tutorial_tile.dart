import 'package:flutter/material.dart';
import 'package:lpu_campux/core/model/ui_model/tutorial_ui_model.dart';

import '../../../../../../../core/basic_features.dart';

class TutorialItem extends StatefulWidget {
  final VoidCallback onPressed;
  final ExpansionUIModel tutorialItem;

  const TutorialItem(
      {super.key, required this.tutorialItem, required this.onPressed});

  @override
  State<TutorialItem> createState() => _TutorialItemState();
}

class _TutorialItemState extends State<TutorialItem>
    with SingleTickerProviderStateMixin {
  late final animationController = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 1000),
  );

  late final Animation<double> animation;

  @override
  void initState() {
    super.initState();

    if (widget.tutorialItem.completionPercentage == null) {
      return;
    }
    animation = Tween<double>(
      begin: 0.0,
      end: widget.tutorialItem.completionPercentage! / 100,
    ).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.easeInOutCubic,
      ),
    );

    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(Dimensions.commonRadius),
        child: IntrinsicHeight(
          child: Stack(
            children: [
              // Base background
              Container(
                color: AppColors.containerColor,
                width: double.infinity,
              ),

              // Percentage layer
              AnimatedBuilder(
                animation: animation,
                builder: (context, child) => FractionallySizedBox(
                  widthFactor: animation.value,
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.primaryLightColor,
                    ),
                  ),
                ),
              ),

              // Text
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: Dimensions.w25,
                  vertical: Dimensions.h10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.tutorialItem.title,
                      style: fontStyleSemiBold20.copyWith(
                        fontSize: Dimensions.sp28,
                        height: 1.2,
                      ),
                    ),
                    SizedBox(height: Dimensions.h6),
                    Text(
                      '${AppString.courseCode}${widget.tutorialItem.subtitle}',
                      style: fontStyleSemiBold14,
                    ),
                    Text(
                      '${widget.tutorialItem.completionPercentage?.toStringAsFixed(0)}${AppString.percentCompleted}',
                      style: fontStyleSemiBold14,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
