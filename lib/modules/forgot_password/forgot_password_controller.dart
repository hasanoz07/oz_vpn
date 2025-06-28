import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oz_vpn/shared/constants/constants_instances.dart';

class ForgotPasswordController extends GetxController {
  final constants = ConstantsInstances.instance;
  late Rx<TextEditingController> emailController;
  late FocusNode emailFocusNode;
  RxBool emailFieldFocused = false.obs;

  @override
  void onInit() {
    emailController = TextEditingController().obs;
    emailFocusNode =
        FocusNode()..addListener(() {
          emailFieldFocused.value = emailFocusNode.hasFocus;
        });
    super.onInit();
  }

  @override
  void onClose() {
    emailController.value.dispose();
    emailFocusNode.dispose();
    super.onClose();
  }
}
