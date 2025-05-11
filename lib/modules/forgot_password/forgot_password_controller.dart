import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oz_vpn/shared/constants/constants_instances.dart';

class ForgotPasswordController extends GetxController {
  final constants = ConstantsInstances.instance;
  final emailController = TextEditingController();

  @override
  void onClose() {
    emailController.dispose();
    super.onClose();
  }
}
