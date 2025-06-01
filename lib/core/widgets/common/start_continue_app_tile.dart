import 'package:flutter/material.dart';

import '../../basic_features.dart';

class StartContinueAppTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String buttonText;
  final VoidCallback onPressed;

  const StartContinueAppTile(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.buttonText,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.containerColor,
        borderRadius: BorderRadius.circular(Dimensions.commonRadius),
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimensions.w25)
                    .copyWith(bottom: Dimensions.h2, top: Dimensions.h10),
                child: Text(
                  title,
                  style: fontStyleSemiBold20.copyWith(
                      fontSize: Dimensions.sp28, height: 1.2),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(
                    top: Dimensions.h2,
                    bottom: Dimensions.h28,
                    left: Dimensions.w25,
                    right: Dimensions.w80),
                child: Text(
                  subtitle,
                  style: fontStyleSemiBold14,
                ),
              ),
            ],
          ),

          // Button Bottom Right
          Positioned(
            bottom: 0,
            right: 0,
            child: MyButton(
              padding: EdgeInsets.symmetric(
                  horizontal: Dimensions.w20, vertical: Dimensions.h10),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Dimensions.commonRadius),
                bottomRight: Radius.circular(Dimensions.commonRadius),
              ),
              onPressed: onPressed,
              child: Text(
                buttonText,
                style:
                    fontStyleSemiBold16.copyWith(color: AppColors.whiteColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
