import 'package:get/get.dart';
import 'package:oz_vpn/modules/verify/verify_controller.dart';

class VerifyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VerifyController>(VerifyController.new);
  }
}
