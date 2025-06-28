import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:oz_vpn/shared/constants/constants_instances.dart';
import 'package:oz_vpn/shared/enums/app_icons.dart';

class GlobalBackButton extends StatelessWidget {
  const GlobalBackButton({super.key, this.onTap, this.backgroundColor, this.iconColor});
  final VoidCallback? onTap;
  final Color? backgroundColor;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    final constants = ConstantsInstances.instance;
    return Padding(
      padding: EdgeInsets.all(8.sp),
      child: InkWell(
        onTap: onTap ?? Get.back,
        child: Container(
          decoration: BoxDecoration(
            color: backgroundColor ?? Colors.white,
            shape: BoxShape.circle,
            border: Border.all(color: const Color(0xFFE6E6E6), width: 1.5),
          ),
          child: Center(child: AppIcons.backArrow.svgWithAttiributes(color: iconColor ?? constants.colors.appBlack)),
        ),
      ),
    );
  }
}
