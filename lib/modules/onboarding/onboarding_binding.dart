import 'package:get/get.dart';
import 'package:oz_vpn/modules/onboarding/onboarding_controller.dart';

class OnboardingBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OnboardingController>(OnboardingController.new);
  }
}
