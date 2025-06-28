import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:oz_vpn/modules/verify/verify_controller.dart';
import 'package:pinput/pinput.dart';

class VerifyScreen extends GetView<VerifyController> {
  const VerifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(controller.constants.strings.verifyTitle.tr)),
      body: Padding(
        padding: controller.constants.paddings.horizontal + controller.constants.paddings.vertical,
        child: Column(
          children: [
            SizedBox(height: 24.h),
            Text(
              controller.constants.strings.veriftYourSelf.tr,
              style: controller.constants.textStyles.heading1.copyWith(color: controller.constants.colors.appBlack),
            ),

            SizedBox(height: 16.h),
            Text(
              controller.constants.strings.veriftYourSelfDescription.tr,
              style: controller.constants.textStyles.paragraph1.copyWith(color: controller.constants.colors.gray),
            ),
            SizedBox(height: 24.h),
            _PinPut(controller: controller),
            SizedBox(height: 24.h),
            ElevatedButton(
              onPressed: () {},
              child: Text(controller.constants.strings.verify.tr, style: controller.constants.textStyles.fieldText2),
            ),
          ],
        ),
      ),
    );
  }
}

class _PinPut extends StatelessWidget {
  const _PinPut({required this.controller, super.key});

  final VerifyController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: controller.constants.paddings.vertical10,
      child: Pinput(
        controller: controller.pinController,
        length: 5,
        showCursor: false,
        autofocus: true,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        defaultPinTheme: PinTheme(
          height: 54.h,
          width: 54.w,
          textStyle: controller.constants.textStyles.fieldText1.copyWith(color: controller.constants.colors.black),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),
            color: controller.constants.colors.black.withOpacity(0.02),
            border: Border.all(color: controller.constants.colors.lightGray2, width: 1.w),
          ),
        ),
        focusedPinTheme: PinTheme(
          height: 54.h,
          width: 54.w,
          textStyle: controller.constants.textStyles.fieldText1.copyWith(color: controller.constants.colors.black),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),
            color: controller.constants.colors.black.withOpacity(0.02),
            border: Border.all(color: controller.constants.colors.secondary, width: 1.w),
          ),
        ),
      ),
    );
  }
}
