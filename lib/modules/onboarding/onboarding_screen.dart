import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:oz_vpn/modules/onboarding/onboarding_controller.dart';
import 'package:oz_vpn/shared/constants/strings.dart';
import 'package:oz_vpn/shared/enums/app_icons.dart';
import 'package:oz_vpn/shared/enums/app_images.dart';

class OnboardingScreen extends GetView<OnboardingController> {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          AppImages.onboaronboarding.pngWithAttiributes(
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),

          SafeArea(
            child: Padding(
              padding: controller.constants.paddings.vertical + controller.constants.paddings.horizontal,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(AppStrings.instance.onboardingTitle.tr, style: controller.constants.textStyles.semiBoldItalic32),
                  SizedBox(height: 8.h),
                  Text(
                    controller.constants.strings.onboardingDescription.tr,
                    style: controller.constants.textStyles.paragraph1.copyWith(color: controller.constants.colors.gray),
                  ),
                  SizedBox(height: 16.h),
                  Bounceable(
                    onTap: controller.watchTutorial,
                    child: Row(
                      children: [
                        AppIcons.play.svgWithAttiributes(color: controller.constants.colors.white),
                        SizedBox(width: 8.w),
                        Text(
                          controller.constants.strings.watchTutorial.tr,
                          style: controller.constants.textStyles.medium14,
                        ),
                      ],
                    ),
                  ),
                  const Expanded(child: SizedBox.shrink()),
                  ElevatedButton(
                    onPressed: controller.goToLogin,
                    child: Text(controller.constants.strings.onboardingButton.tr),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
