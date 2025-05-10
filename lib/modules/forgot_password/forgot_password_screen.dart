import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:oz_vpn/modules/forgot_password/forgot_password_controller.dart';
import 'package:oz_vpn/shared/widgets/global_back_button.dart';

class ForgotPasswordScreen extends GetView<ForgotPasswordController> {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: controller.constants.colors.white,
      appBar: AppBar(
        backgroundColor: controller.constants.colors.white,
        elevation: 0,
        leading: const GlobalBackButton(),
      ),
      body: Padding(
        padding: controller.constants.paddings.horizontal + controller.constants.paddings.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 24.h),
            Text(
              controller.constants.strings.forgotPassword,
              style: controller.constants.textStyles.heading1.copyWith(color: controller.constants.colors.appBlack),
            ),
            SizedBox(height: 16.h),
            Text(
              'Enter your email to reset your password. We will send the code to the email so you can reset password',
              style: controller.constants.textStyles.paragraph1.copyWith(color: controller.constants.colors.gray),
            ),
            SizedBox(height: 32.h),
            Container(
              decoration: BoxDecoration(
                color: controller.constants.colors.white,
                borderRadius: controller.constants.borderRadius.radiusAll20,
                border: Border.all(color: controller.constants.colors.secondary),
              ),
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
              child: Row(
                children: [
                  Icon(Icons.email_outlined, color: controller.constants.colors.secondary),
                  SizedBox(width: 12.w),
                  Expanded(
                    child: TextField(
                      controller: controller.emailController,
                      style: controller.constants.textStyles.fieldText1.copyWith(
                        color: controller.constants.colors.appBlack,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'uihut@gmail.com',
                        hintStyle: controller.constants.textStyles.fieldText1.copyWith(
                          color: controller.constants.colors.gray,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 32.h),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: controller.constants.colors.primary,
                  shape: RoundedRectangleBorder(borderRadius: controller.constants.borderRadius.radiusAll20),
                  padding: EdgeInsets.symmetric(vertical: 16.h),
                ),
                child: Text(
                  'Send Code',
                  style: controller.constants.textStyles.fieldText2.copyWith(color: controller.constants.colors.white),
                ),
              ),
            ),
            const Spacer(),
            // Klavye görseli yerine boşluk bırakıldı. Gerçek klavye için ek bir şey yapılmadı.
            SizedBox(height: 24.h),
          ],
        ),
      ),
    );
  }
}
