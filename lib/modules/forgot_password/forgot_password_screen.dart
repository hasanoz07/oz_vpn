import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:oz_vpn/modules/forgot_password/forgot_password_controller.dart';
import 'package:oz_vpn/shared/widgets/email_form_field.dart';

class ForgotPasswordScreen extends GetView<ForgotPasswordController> {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: Text(controller.constants.strings.forgotPasswordTitle.tr)),
      body: Padding(
        padding: controller.constants.paddings.horizontal + controller.constants.paddings.vertical,
        child: Column(
          children: [
            SizedBox(height: 24.h),
            Text(
              controller.constants.strings.forgotPassword.tr,
              style: controller.constants.textStyles.heading1.copyWith(color: controller.constants.colors.appBlack),
            ),
            SizedBox(height: 8.h),
            Text(
              controller.constants.strings.forgotPasswordDescription.tr,
              textAlign: TextAlign.center,
              style: controller.constants.textStyles.paragraph1.copyWith(color: controller.constants.colors.gray),
            ),
            SizedBox(height: 24.h),
            EmailFormField(
              textEditingController: controller.emailController,
              focusNode: controller.emailFocusNode,
              hasFocus: controller.emailFieldFocused,
            ),
            SizedBox(height: 24.h),
            ElevatedButton(
              onPressed: controller.goToVerify,
              child: Text(controller.constants.strings.signUp.tr, style: controller.constants.textStyles.fieldText2),
            ),
          ],
        ),
      ),
    );
  }
}
