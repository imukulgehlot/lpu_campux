import 'package:flutter/material.dart';
import 'package:lpu_campux/core/basic_features.dart';
import 'package:lpu_campux/core/widgets/custom_appbar.dart';
import 'package:lpu_campux/features/id_card/widgets/identity_card_item.dart';

class IdentityCardScreen extends StatelessWidget {
  const IdentityCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.defaultAppBarWithBackButton(
          title: AppString.identityCard),
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: Dimensions.w12),
        child: ListView(
          children: [
            SizedBox(height: Dimensions.h10),
            IdentityCardItem(
              image: AppImages.icIDFront,
              delay: Duration(milliseconds: 200),
            ),
            IdentityCardItem(
              image: AppImages.icIDBack,
              delay: Duration(milliseconds: 400),
            ),
            SizedBox(height: Dimensions.h40),
          ],
        ),
      ),
    );
  }
}
