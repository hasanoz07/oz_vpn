import 'package:get/get.dart';
import 'package:oz_vpn/modules/forgot_password/forgot_password_controller.dart';

class ForgotPasswordBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ForgotPasswordController>(ForgotPasswordController.new);
  }
}
