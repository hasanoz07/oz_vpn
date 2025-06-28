import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:oz_vpn/modules/login/login_controller.dart';
import 'package:oz_vpn/routes/app_pages.dart';
import 'package:oz_vpn/shared/enums/app_icons.dart';
import 'package:oz_vpn/shared/widgets/email_form_field.dart';
import 'package:oz_vpn/shared/widgets/password_form_field.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: Padding(
        padding: controller.constants.paddings.horizontal + controller.constants.paddings.vertical,
        child: Column(
          children: [
            Text(
              controller.constants.strings.loginTitle.tr,
              style: controller.constants.textStyles.heading1.copyWith(color: controller.constants.colors.appBlack),
            ),
            SizedBox(height: 8.h),
            Text(
              controller.constants.strings.loginDescription.tr,
              style: controller.constants.textStyles.paragraph1.copyWith(color: controller.constants.colors.gray),
            ),
            SizedBox(height: 24.h),
            SizedBox(width: 200.w, child: _loginSignUpTabBar()),
            SizedBox(height: 24.h),
            _signUpGoogleButton(),
            SizedBox(height: 16.h),
            _signUpAppleButton(),
            SizedBox(height: 16.h),
            _orBetterYetText(),
            SizedBox(height: 24.h),
            _loginOrSignUp(),
            ElevatedButton(
              onPressed: () {},
              child: Obx(
                () => Text(
                  controller.showLogin.value
                      ? controller.constants.strings.logIn.tr
                      : controller.constants.strings.signUp.tr,
                  style: controller.constants.textStyles.fieldText2,
                ),
              ),
            ),
            SizedBox(height: 36.h),
          ],
        ),
      ),
    );
  }

  Row _orBetterYetText() {
    return Row(
      children: [
        Expanded(child: Container(height: 1, color: controller.constants.colors.lightGray)),
        Padding(
          padding: controller.constants.paddings.horizontal12,
          child: Text(
            controller.constants.strings.orBetterYet.tr,
            style: controller.constants.textStyles.medium12.copyWith(color: controller.constants.colors.gray),
          ),
        ),
        Expanded(child: Container(height: 1, color: controller.constants.colors.lightGray)),
      ],
    );
  }

  Expanded _loginOrSignUp() {
    return Expanded(
      child: Obx(
        () => AnimatedSwitcher(
          duration: const Duration(milliseconds: 400),
          transitionBuilder: (Widget child, Animation<double> animation) {
            return SlideTransition(
              position: Tween<Offset>(begin: const Offset(1, 0), end: Offset.zero).animate(animation),
              child: child,
            );
          },
          child:
              controller.showLogin.value
                  ? Form(
                    key: controller.loginFormKey,
                    child: Column(
                      children: [
                        EmailFormField(
                          textEditingController: controller.emailController,
                          focusNode: controller.emailFocusNode,
                          hasFocus: controller.emailFieldFocused,
                        ),
                        PasswordFormField(
                          textEditingController: controller.passwordController,
                          focusNode: controller.passwordFocusNode,
                          hasFocus: controller.passwordFieldFocused,
                          passwordVisible: controller.passwordVisible,
                          hintText: controller.constants.strings.password.tr,
                        ),
                        SizedBox(height: 8.h),
                        Bounceable(
                          onTap: () => Get.toNamed(Routes.forgotPassword),
                          child: Text(
                            controller.constants.strings.forgotPassword.tr,
                            style: controller.constants.textStyles.fieldText1.copyWith(
                              color: controller.constants.colors.appBlack,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                  : Form(
                    key: controller.signUpFormKey,
                    child: Column(
                      children: [
                        EmailFormField(
                          textEditingController: controller.emailController,
                          focusNode: controller.emailFocusNode,
                          hasFocus: controller.emailFieldFocused,
                        ),
                        PasswordFormField(
                          textEditingController: controller.passwordController,
                          focusNode: controller.passwordFocusNode,
                          hasFocus: controller.passwordFieldFocused,
                          passwordVisible: controller.passwordVisible,
                          hintText: controller.constants.strings.password.tr,
                        ),
                        PasswordFormField(
                          textEditingController: controller.confirmPasswordController,
                          focusNode: controller.confirmPasswordFocusNode,
                          hasFocus: controller.confirmPasswordFieldFocused,
                          passwordVisible: controller.confirmPasswordVisible,
                          hintText: controller.constants.strings.confirmPassword.tr,
                        ),
                      ],
                    ),
                  ),
        ),
      ),
    );
  }

  ElevatedButton _signUpAppleButton() {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(backgroundColor: controller.constants.colors.black),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppIcons.apple.svg,
          SizedBox(width: 8.w),
          Text(controller.constants.strings.signUpWithApple.tr, style: controller.constants.textStyles.fieldText2),
        ],
      ),
    );
  }

  ElevatedButton _signUpGoogleButton() {
    return ElevatedButton(
      onPressed: () async {
        await controller.authRepository.signInWithGoogle();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: controller.constants.colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: controller.constants.borderRadius.radiusAll20,
          side: BorderSide(color: controller.constants.colors.whiteButtonBorder),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppIcons.google.svg,
          SizedBox(width: 8.w),
          Text(
            controller.constants.strings.signUpWithGoogle.tr,
            style: controller.constants.textStyles.fieldText2.copyWith(color: controller.constants.colors.appBlack),
          ),
        ],
      ),
    );
  }

  Widget _loginSignUpTabBar() {
    const double tabBarWidth = 200;
    const tabWidth = tabBarWidth / 2;
    return Obx(() {
      final isLogin = controller.showLogin.value;
      return Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: tabWidth.w,
                child: Bounceable(
                  onTap: () => controller.showLogin.value = true,
                  child: Container(
                    color: Colors.transparent,
                    alignment: Alignment.center,
                    child: Text(
                      controller.constants.strings.logIn.tr,
                      style: controller.constants.textStyles.medium12.copyWith(
                        color: isLogin ? controller.constants.colors.appBlack : controller.constants.colors.gray,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: tabWidth.w,
                child: Bounceable(
                  onTap: () => controller.showLogin.value = false,
                  child: Container(
                    color: Colors.transparent,
                    alignment: Alignment.center,
                    child: Text(
                      controller.constants.strings.signUp.tr,
                      style: controller.constants.textStyles.medium12.copyWith(
                        color: !isLogin ? controller.constants.colors.appBlack : controller.constants.colors.gray,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 8.h),
          Stack(
            children: [
              Container(
                height: 2.h,
                width: tabBarWidth.w,
                decoration: BoxDecoration(
                  // ignore: deprecated_member_use
                  color: controller.constants.colors.gray.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              AnimatedAlign(
                alignment: isLogin ? Alignment.centerLeft : Alignment.centerRight,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                child: Container(
                  height: 2.h,
                  width: tabWidth.w,
                  decoration: BoxDecoration(
                    color: controller.constants.colors.appBlack,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
            ],
          ),
        ],
      );
    });
  }
}
