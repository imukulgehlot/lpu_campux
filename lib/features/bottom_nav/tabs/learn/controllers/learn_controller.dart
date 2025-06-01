import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LearnController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final selectedTabBarIndex = 0.obs;
  late final tabController = TabController(length: 2, vsync: this);

  @override
  void onClose() {
    super.onClose();

    tabController.dispose();
  }
}
