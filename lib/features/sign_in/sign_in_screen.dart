import 'dart:ui' show ImageFilter;

import 'package:flutter/material.dart';
import 'package:lpu_campux/core/utils/custom_dialogs.dart';
import 'package:lpu_campux/core/widgets/text_field/text_field/my_text_field.dart';
import 'package:lpu_campux/features/sign_in/controllers/sign_in_controller.dart';

import '../../../core/widgets/custom_image.dart' show CustomSvgAssetImage;
import '../../core/basic_features.dart';

class SignInScreen extends GetView<SignInController> {
  const SignInScreen({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background logo
        Positioned(
          bottom: -Dimensions.w300,
          left: -Dimensions.w150,
          child: AnimatedBuilder(
            animation: controller.rotationAnimation,
            builder: (context, child) {
              Widget logo = Transform.translate(
                offset: Offset(-Get.width * 0.3, -Get.height * 0.3),
                child: Transform.rotate(
                  alignment: Alignment.bottomLeft,
                  angle: controller.rotationAnimation.value,
                  child: CustomSvgAssetImage(
                    image: AppImages.icAppGraphic,
                    height: Get.height * 1.5,
                    color: AppColors.primaryLightColor.withValues(alpha: 0.2),
                  ),
                ),
              );

              return controller.enableBlur
                  ? ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 30,
                          sigmaY: 30,
                        ),
                        child: logo,
                      ),
                    )
                  : logo;
            },
          ),
        ),

        // Actual Sign In Content
        SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent, // so Stack bg is visible
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.all(Dimensions.commonPaddingForScreen),
              child: Column(
                children: [
                  SizedBox(
                    height: Dimensions.h30,
                  ),

                  // Top Logo
                  CustomSvgAssetImage(
                    image: AppImages.icAppIconWithTagline,
                    height: Dimensions.h60,
                  ),
                  SizedBox(
                    height: Dimensions.h13,
                  ),

                  // Sign In Text
                  Text(
                    AppString.signIn,
                    style: fontStyleBold32.copyWith(
                        color: Get.theme.colorScheme.blueTextColor),
                  ),

                  // Sign In Tagline
                  GestureDetector(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: Dimensions.w5),
                      child: Text(
                        AppString.connectInspireAndThrive,
                        textAlign: TextAlign.center,
                        style: fontStyleMedium15.copyWith(
                            color: Get.theme.colorScheme.blueTextColor),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.h13,
                  ),

                  SizedBox(
                    height: Dimensions.h13,
                  ),

                  // Email Text
                  Container(
                    padding: EdgeInsets.only(left: Dimensions.h10),
                    alignment: Alignment.centerLeft,
                    child: Text(AppString.email,
                        textAlign: TextAlign.center,
                        style: fontStyleSemiBold15.apply(
                            color: Theme.of(context).colorScheme.textColor)),
                  ),
                  SizedBox(
                    height: Dimensions.h3,
                  ),

                  // Email Text field
                  MyTextField(
                      borderRadius: Dimensions.r10,
                      prefixIcon: CustomSvgAssetImage(
                        image: AppImages.icEmail,
                        width: Dimensions.w25,
                        color: Theme.of(context).colorScheme.textColor,
                      ),
                      textFieldColor:
                          AppColors.textFieldColor.withValues(alpha: 0.7),
                      textStyle: fontStyleRegular14.apply(
                          color: Theme.of(context).colorScheme.textColor),
                      height: Dimensions.h40,
                      textInputType: TextInputType.emailAddress,
                      hintTextColor: AppColors.hintColor,
                      textController: controller.emailController,
                      hintText: AppString.enterYourEmail),

                  SizedBox(
                    height: Dimensions.h13,
                  ),

                  // Password Text
                  Container(
                    padding: EdgeInsets.only(left: Dimensions.h10),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      AppString.password,
                      textAlign: TextAlign.center,
                      style: fontStyleSemiBold15.apply(
                          color: Theme.of(context).colorScheme.textColor),
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.h3,
                  ),

                  // Password Text Field
                  Obx(
                    () => MyTextField(
                        borderRadius: Dimensions.r10,
                        prefixIcon: CustomSvgAssetImage(
                          image: AppImages.icPassword,
                          width: Dimensions.w25,
                          color: Theme.of(context).colorScheme.textColor,
                        ),
                        suffixIcon: AnimatedSwitcher(
                          duration: const Duration(milliseconds: 250),
                          transitionBuilder:
                              (Widget child, Animation<double> animation) {
                            return FadeTransition(
                              opacity: animation,
                              child: ScaleTransition(
                                  scale: animation, child: child),
                            );
                          },
                          child: CustomSvgAssetImage(
                            key: ValueKey(controller.isPasswordVisible.value),
                            // VERY IMPORTANT
                            height: Dimensions.h23,
                            color: Theme.of(context).colorScheme.textColor,
                            onTap: controller.togglePasswordVisibility,
                            image: controller.isPasswordVisible.value
                                ? AppImages.icViewPassword
                                : AppImages.icHidePassword,
                          ),
                        ),
                        textFieldColor:
                            AppColors.textFieldColor.withValues(alpha: 0.7),
                        textStyle: fontStyleRegular14.apply(
                            color: Theme.of(context).colorScheme.textColor),
                        height: Dimensions.h40,
                        obscureText: !controller.isPasswordVisible.value,
                        hintTextColor: AppColors.hintColor,
                        textController: controller.passwordController,
                        textInputAction: TextInputAction.done,
                        hintText: AppString.enterYourPasswordHere),
                  ),

                  // Forgot Password
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(Dimensions.r15))),
                      onPressed: () => forgotPassword(context),
                      child: Text(
                        AppString.forgotPassword,
                        style: fontStyleSemiBold13.apply(
                            color: Get.theme.colorScheme.blueTextColor),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: Dimensions.h20,
                  ),

                  // Sign In Button
                  Hero(
                    tag: "signInToIntro",
                    transitionOnUserGestures: true,
                    child: MyButton(
                      title: AppString.signIn,
                      onPressed: () => controller.checkValidation(context),
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.h13,
                  ),
                ],
              ),
            ),
            bottomNavigationBar: CustomSvgAssetImage(
              image: AppImages.icNAACLogo,
              height: Dimensions.h40,
            ),
          ),
        )
      ],
    );
  }

  // Widget build(BuildContext context) {
  //   return SafeArea(
  //     child: Scaffold(
  //       body: SingleChildScrollView(
  //         physics: const BouncingScrollPhysics(),
  //         padding: EdgeInsets.all(Dimensions.commonPaddingForScreen),
  //         child: Column(
  //           children: [
  //             SizedBox(
  //               height: Dimensions.h30,
  //             ),
  //
  //             // Top Logo
  //             CustomSvgAssetImage(
  //               image: AppImages.icAppIconWithTagline,
  //               height: Dimensions.h60,
  //             ),
  //             SizedBox(
  //               height: Dimensions.h13,
  //             ),
  //
  //             // Sign In Text
  //             Text(
  //               AppString.signIn,
  //               style: fontStyleBold32.copyWith(
  //                   color: Get.theme.colorScheme.blueTextColor),
  //             ),
  //
  //             // Sign In Tagline
  //             GestureDetector(
  //               child: Padding(
  //                 padding: EdgeInsets.symmetric(horizontal: Dimensions.w5),
  //                 child: Text(
  //                   AppString.connectInspireAndThrive,
  //                   textAlign: TextAlign.center,
  //                   style: fontStyleMedium15.copyWith(
  //                       color: Get.theme.colorScheme.blueTextColor),
  //                 ),
  //               ),
  //             ),
  //             SizedBox(
  //               height: Dimensions.h13,
  //             ),
  //
  //             SizedBox(
  //               height: Dimensions.h13,
  //             ),
  //
  //             // Email Text
  //             Container(
  //               padding: EdgeInsets.only(left: Dimensions.h10),
  //               alignment: Alignment.centerLeft,
  //               child: Text(AppString.email,
  //                   textAlign: TextAlign.center,
  //                   style: fontStyleSemiBold15.apply(
  //                       color: Theme.of(context).colorScheme.textColor)),
  //             ),
  //             SizedBox(
  //               height: Dimensions.h3,
  //             ),
  //
  //             // Email Text field
  //             MyTextField(
  //                 borderRadius: Dimensions.r10,
  //                 prefixIcon: CustomSvgAssetImage(
  //                   image: AppImages.icEmail,
  //                   width: Dimensions.w25,
  //                   color: Theme.of(context).colorScheme.textColor,
  //                 ),
  //                 textFieldColor: AppColors.textFieldColor,
  //                 textStyle: fontStyleRegular14.apply(
  //                     color: Theme.of(context).colorScheme.textColor),
  //                 height: Dimensions.h40,
  //                 textInputType: TextInputType.emailAddress,
  //                 hintTextColor: AppColors.hintColor,
  //                 textController: controller.emailController,
  //                 hintText: AppString.enterYourEmail),
  //
  //             SizedBox(
  //               height: Dimensions.h13,
  //             ),
  //
  //             // Password Text
  //             Container(
  //               padding: EdgeInsets.only(left: Dimensions.h10),
  //               alignment: Alignment.centerLeft,
  //               child: Text(
  //                 AppString.password,
  //                 textAlign: TextAlign.center,
  //                 style: fontStyleSemiBold15.apply(
  //                     color: Theme.of(context).colorScheme.textColor),
  //               ),
  //             ),
  //             SizedBox(
  //               height: Dimensions.h3,
  //             ),
  //
  //             // Password Text Field
  //             Obx(
  //               () => MyTextField(
  //                   borderRadius: Dimensions.r10,
  //                   prefixIcon: CustomSvgAssetImage(
  //                     image: AppImages.icPassword,
  //                     width: Dimensions.w25,
  //                     color: Theme.of(context).colorScheme.textColor,
  //                   ),
  //                   suffixIcon: AnimatedSwitcher(
  //                     duration: const Duration(milliseconds: 250),
  //                     transitionBuilder:
  //                         (Widget child, Animation<double> animation) {
  //                       return FadeTransition(
  //                         opacity: animation,
  //                         child:
  //                             ScaleTransition(scale: animation, child: child),
  //                       );
  //                     },
  //                     child: CustomSvgAssetImage(
  //                       key: ValueKey(controller.isPasswordVisible.value),
  //                       // VERY IMPORTANT
  //                       height: Dimensions.h23,
  //                       color: Theme.of(context).colorScheme.textColor,
  //                       onTap: controller.togglePasswordVisibility,
  //                       image: controller.isPasswordVisible.value
  //                           ? AppImages.icViewPassword
  //                           : AppImages.icHidePassword,
  //                     ),
  //                   ),
  //                   textStyle: fontStyleRegular14.apply(
  //                       color: Theme.of(context).colorScheme.textColor),
  //                   height: Dimensions.h40,
  //                   obscureText: !controller.isPasswordVisible.value,
  //                   hintTextColor: AppColors.hintColor,
  //                   textController: controller.passwordController,
  //                   textInputAction: TextInputAction.done,
  //                   hintText: AppString.enterYourPasswordHere),
  //             ),
  //             // Forgot Password
  //             TextButton(
  //               style: TextButton.styleFrom(
  //                   shape: RoundedRectangleBorder(
  //                       borderRadius: BorderRadius.circular(Dimensions.r15))),
  //               onPressed: () => forgotPassword(context),
  //               child: Align(
  //                 alignment: Alignment.centerRight,
  //                 child: Text(
  //                   "Forgot Password",
  //                   style: fontStyleSemiBold13.apply(
  //                       color: Get.theme.colorScheme.blueTextColor),
  //                 ),
  //               ),
  //             ),
  //
  //             SizedBox(
  //               height: Dimensions.h20,
  //             ),
  //
  //             // Sign In Button
  //             Hero(
  //               tag: "signInToIntro",
  //               transitionOnUserGestures: true,
  //               child: MyButton(
  //                 title: AppString.signIn,
  //                 onPressed: () => controller.checkValidation(context),
  //               ),
  //             ),
  //             SizedBox(
  //               height: Dimensions.h13,
  //             ),
  //           ],
  //         ),
  //       ),
  //       bottomNavigationBar: CustomSvgAssetImage(
  //         image: AppImages.icNAACLogo,
  //         height: Dimensions.h40,
  //       ),
  //     ),
  //   );
  // }

  void forgotPassword(context) {
    controller.forgotPassController.text = controller.emailController.text;

    CustomDialogs.showCustomDialog(
        onDialogCloseFunction: () => controller.forgotPassController.clear(),
        myWidget: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Provide Text
            Text(
              AppString.pleaseProvideEmail,
              textAlign: TextAlign.center,
              style: fontStyleBold18.copyWith(
                  color: Get.theme.colorScheme.textColor),
            ),
            SizedBox(
              height: Dimensions.h3,
            ),

            // Sending Verification Code Subtitle
            Text(
              AppString.weWillBeSendingAVerificationCode,
              style: fontStyleMedium13.copyWith(
                  color: Get.theme.colorScheme.hintTextColor),
            ),
            SizedBox(
              height: Dimensions.h13,
            ),

            // Email Text
            Container(
              padding:
                  EdgeInsets.only(bottom: Dimensions.h3, left: Dimensions.w12),
              alignment: Alignment.centerLeft,
              child: Text(AppString.email.tr,
                  textAlign: TextAlign.center,
                  style: fontStyleSemiBold15.apply(
                      color: Theme.of(context).colorScheme.textColor)),
            ),

            // Email Text field
            MyTextField(
                autoFocus: true,
                borderRadius: Dimensions.r10,
                prefixIcon: CustomSvgAssetImage(
                  image: AppImages.icEmail,
                  width: Dimensions.w25,
                  color: Theme.of(context).colorScheme.textColor,
                ),
                textStyle: fontStyleRegular14.apply(
                    color: Theme.of(context).colorScheme.textColor),
                height: Dimensions.h40,
                textInputType: TextInputType.emailAddress,
                hintTextColor: AppColors.hintColor,
                textInputAction: TextInputAction.done,
                textController: controller.forgotPassController,
                hintText: AppString.enterYourEmail),
            SizedBox(
              height: Dimensions.h15,
            ),

            // Send Link
            MyButton(
              height: Dimensions.h32,
              title: AppString.sendCode,
              onPressed: () async {
                AppUtils.closeKeyboard();
                if (controller.forgotPassController.text.trim().isEmpty) {
                  AppUtils.showSnackBar(message: AppString.emailCantBeEmpty.tr);
                } else {
                  Get.back();
                  AppUtils.showSnackBar(
                      message:
                          '${AppString.aConfirmationCodeHasBeenSent} ${controller.forgotPassController.text}.',
                      isSuccess: true);
                }
              },
            ),
            SizedBox(
              height: Dimensions.h13,
            ),
          ],
        ),
        title: AppString.codeSent,
        contentText: AppString.linkSentBody);
  }
}
