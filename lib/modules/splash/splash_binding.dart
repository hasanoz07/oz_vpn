import 'package:get/get.dart';
import 'package:oz_vpn/modules/splash/splash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(SplashController.new);
  }
}
