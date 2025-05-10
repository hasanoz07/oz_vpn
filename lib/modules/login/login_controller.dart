import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oz_vpn/shared/constants/constants_instances.dart';

class LoginController extends GetxController {
  final constants = ConstantsInstances.instance;
  late PageController pageViewController;

  // Controllers
  late Rx<TextEditingController> emailController;
  late Rx<TextEditingController> passwordController;
  late Rx<TextEditingController> confirmPasswordController;

  // FocusNodes
  late FocusNode emailFocusNode;
  late FocusNode passwordFocusNode;
  late FocusNode confirmPasswordFocusNode;

  // Booleans
  RxBool showLogin = true.obs;
  RxBool emailFieldFocused = false.obs;
  RxBool passwordFieldFocused = false.obs;
  RxBool passwordVisible = true.obs;
  RxBool confirmPasswordFieldFocused = false.obs;
  RxBool confirmPasswordVisible = true.obs;

  // Form Keys
  final signUpFormKey = GlobalKey<FormState>();
  final loginFormKey = GlobalKey<FormState>();

  @override
  void onInit() {
    super.onInit();
    emailController = TextEditingController().obs;
    emailFocusNode =
        FocusNode()..addListener(() {
          emailFieldFocused.value = emailFocusNode.hasFocus;
        });

    passwordController = TextEditingController().obs;
    passwordFocusNode =
        FocusNode()..addListener(() {
          passwordFieldFocused.value = passwordFocusNode.hasFocus;
        });

    confirmPasswordController = TextEditingController().obs;
    confirmPasswordFocusNode =
        FocusNode()..addListener(() {
          confirmPasswordFieldFocused.value = confirmPasswordFocusNode.hasFocus;
        });
  }

  @override
  void onClose() {
    emailController.value.dispose();
    emailFocusNode.dispose();
    passwordController.value.dispose();
    passwordFocusNode.dispose();
    confirmPasswordController.value.dispose();
    confirmPasswordFocusNode.dispose();
    super.onClose();
  }
}
