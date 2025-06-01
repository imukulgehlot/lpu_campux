import 'package:flutter/material.dart';
import 'package:lpu_campux/core/basic_features.dart';
import 'package:lpu_campux/features/bottom_nav/controllers/bottom_nav_controller.dart';
import 'package:lpu_campux/features/bottom_nav/widgets/floating_nav_bar.dart';

class BottomNavScreen extends GetView<BottomNavController> {
  const BottomNavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
        canPop: false,
        onPopInvokedWithResult: controller.onPopInvokedWithResult,
        child: Obx(() => Scaffold(
              extendBody: true,
              body: controller.screens[controller.selectedIndex.value],
              bottomNavigationBar: FloatingBottomNavBar(
                selectedIndex: controller.selectedIndex.value,
                onTap: controller.onDestinationSelected,
                items: controller.destinations,
              ),
            )));
  }
}
