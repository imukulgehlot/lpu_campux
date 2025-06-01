import 'package:flutter/material.dart';
import 'package:lpu_campux/core/widgets/common/lpu_sliver_app_bar.dart';
import 'package:lpu_campux/features/bottom_nav/tabs/learn/controllers/learn_controller.dart';
import 'package:lpu_campux/features/bottom_nav/tabs/learn/tabs/content/content_tab.dart';
import 'package:lpu_campux/features/bottom_nav/tabs/learn/tabs/tutorial/tutorial_tab.dart';

import '../../../../core/basic_features.dart';

class LearnTab extends GetView<LearnController> {
  const LearnTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            // 🧠 SliverAppBar
            LPUSliverAppBar(),

            // 🔁 SliverPersistentHeader
            SliverPersistentHeader(
              pinned: true,
              delegate: _CustomTabBarDelegate(
                Container(
                  margin: EdgeInsets.symmetric(
                          horizontal: Dimensions.commonPaddingForScreen * 2)
                      .copyWith(top: Dimensions.h5),
                  height: Dimensions.h35,
                  decoration: BoxDecoration(
                    color: AppColors.containerColor,
                    borderRadius: BorderRadius.circular(Dimensions.r10),
                  ),
                  child: TabBar(
                    controller: controller.tabController,
                    onTap: (value) =>
                        controller.selectedTabBarIndex.value = value,
                    dividerHeight: 0,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.r10),
                      color: AppColors.primaryColor,
                    ),
                    labelColor: AppColors.whiteColor,
                    labelStyle: fontStyleBold13,
                    unselectedLabelStyle: fontStyleBold13,
                    unselectedLabelColor: AppColors.greyText,
                    tabs: [
                      Tab(text: AppString.tutorials),
                      Tab(text: AppString.content),
                    ],
                  ),
                ),
              ),
            ),
          ],
          body: TabBarView(
            controller: controller.tabController,
            children: const [
              TutorialsTab(),
              ContentTab(),
            ],
          ),
        ),
      ),
    );
  }
}

class _CustomTabBarDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;

  _CustomTabBarDelegate(this.child);

  @override
  double get minExtent => Dimensions.h35 + Dimensions.h5;

  @override
  double get maxExtent => Dimensions.h35 + Dimensions.h5;

  final isPinned = false;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  bool shouldRebuild(covariant _CustomTabBarDelegate oldDelegate) => false;
}
