import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oz_vpn/modules/onboarding/onboarding_controller.dart';
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
              padding:
                  controller.constants.paddings.vertical +
                  controller.constants.paddings.horizontal,
              child: Column(
                children: [
                  const Expanded(child: SizedBox.shrink()),
                  ElevatedButton(onPressed: () {}, child: const Text('Hasan')),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
