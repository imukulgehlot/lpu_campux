import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lpu_campux/core/basic_features.dart';
import 'package:lpu_campux/features/id_card/widgets/image_preview_screen.dart';

class IdentityCardItem extends StatelessWidget {
  final String image;
  final Duration delay;

  const IdentityCardItem({
    super.key,
    required this.image,
    required this.delay,
  });

  @override
  Widget build(BuildContext context) => GestureDetector(
      onTap: () => showCupertinoModalPopup(
        context: context,
        builder: (BuildContext context) => ImagePreviewScreen(
          image: image,
          isAsset: true,
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(Dimensions.r25),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 12),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.07),
              borderRadius: BorderRadius.circular(Dimensions.r25),
              border: Border.all(color: Colors.white.withOpacity(0.2), width: 1),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05), // Lighter shadow for iOS feel
                  blurRadius: 15, // Increased blur for softer shadow
                  offset: const Offset(0, 4), // Slightly softer vertical offset
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Hero(
                tag: image,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(Dimensions.r20),
                  child: Image.asset(
                    image,
                    fit: BoxFit.scaleDown,
                    width: double.infinity,
                  ),
                ),
              ),
            ),
          ),
        ),
      )
          .animate()
          .fadeIn(duration: 500.ms, delay: delay)
          .slideY(begin: 0.1, curve: Curves.easeOut, duration: 500.ms),
    );
}
