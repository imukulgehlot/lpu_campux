import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:lpu_campux/core/basic_features.dart';
import 'package:lpu_campux/core/widgets/common/lpu_sliver_app_bar.dart';
import 'package:lpu_campux/core/widgets/common/start_continue_app_tile.dart';
import 'package:lpu_campux/features/bottom_nav/tabs/explore/controllers/explore_controller.dart';
import 'package:lpu_campux/features/bottom_nav/tabs/explore/widgets/carousel_item.dart';
import 'package:lpu_campux/features/bottom_nav/tabs/explore/widgets/quick_access_tile.dart';

class ExploreTab extends GetView<ExploreController> {
  const ExploreTab({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        // App Bar
        LPUSliverAppBar(),

        // Carousel
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(top: Dimensions.h16),
            child: ConstrainedBox(
              constraints: BoxConstraints(maxHeight: Get.height / 4),


              // Carousel Slider
              child: CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  autoPlayAnimationDuration: const Duration(milliseconds: 1500),
                  viewportFraction: 0.92,
                  enlargeCenterPage: true,
                ),
                items: controller.carouselItems
                    .map((i) => CarouselItem(
                          carouselInfo: i,
                        ))
                    .toList(),
              ),



            ),
          ),
        ),

        // Quick Access Grid
        SliverPadding(
          padding: EdgeInsets.symmetric(
            horizontal: Dimensions.commonPaddingForScreen + Dimensions.w10,
          ).copyWith(
            top: Dimensions.h30,
            bottom: Dimensions.h10,
          ),
          sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                childCount: controller.quickAccessItems.length,
                (context, index) => QuickAccessTile(
                  quickItem: controller.quickAccessItems[index],
                  index: index,
                ),
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 1 / 1)),
        ),

        // Continue with your last lecture
        SliverPadding(
          padding: EdgeInsets.symmetric(
            horizontal: Dimensions.commonPaddingForScreen + Dimensions.w10,
          ).copyWith(bottom: Dimensions.h150),
          sliver: SliverToBoxAdapter(
            child: StartContinueAppTile(
              title: AppString.continueWithYourLastLecture,
              subtitle: 'C++ Programming',
              buttonText: AppString.continueButton,
              onPressed: controller.navigateToContinueWithScreen,
            ),
          ),
        )
      ],
    );
  }
}
