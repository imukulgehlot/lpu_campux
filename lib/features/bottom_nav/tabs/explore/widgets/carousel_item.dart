import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lpu_campux/core/model/ui_model/carousel_info_model.dart';

import '../../../../../core/basic_features.dart';

class CarouselItem extends StatelessWidget {
  final CarouselInfoModel carouselInfo;

  const CarouselItem({
    super.key,
    required this.carouselInfo,
  });

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (BuildContext context) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimensions.w5),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(Dimensions.r16),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(carouselInfo.imagePath),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.black.withValues(alpha: 0.45),
                    BlendMode.darken,
                  ),
                ),
              ),
              padding: EdgeInsets.all(Dimensions.commonPaddingForScreen),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Animate(
                    effects: const [
                      FadeEffect(
                        delay: Duration(milliseconds: 200),
                        duration: Duration(milliseconds: 700),
                      )
                    ],
                    child: Flexible(
                      child: Text(
                        carouselInfo.title,
                        overflow: TextOverflow.ellipsis,
                        style: fontStyleRegular16.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: Dimensions.h5),
                  Animate(
                    effects: const [
                      FadeEffect(
                        delay: Duration(milliseconds: 700),
                        duration: Duration(milliseconds: 500),
                      )
                    ],
                    child: Text(
                      carouselInfo.description,
                      style: fontStyleSemiBold25.copyWith(
                        color: Colors.white,
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
