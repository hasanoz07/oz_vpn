import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oz_vpn/shared/constants/colors.dart';
import 'package:oz_vpn/shared/constants/fonts.dart';

final class AppTextStyles {
  const AppTextStyles._();

  static const AppTextStyles instance = AppTextStyles._();

  TextStyle get semiBoldItalic32 => TextStyle(
    fontSize: 32.sp,
    fontFamily: AppFonts.gilroySemiBoldItalic.value,
    color: AppColors.instance.white,
  );
  TextStyle get medium14 => TextStyle(
    fontSize: 14.sp,
    height: 1,
    letterSpacing: 0.14,
    fontFamily: AppFonts.gilroyMedium.value,
    color: AppColors.instance.white,
  );
  //!Defined styles
  TextStyle get paragraph1 => TextStyle(
    fontSize: 12.sp,
    height: 1.5, // 18 / 12 = 1.5
    letterSpacing: 0.12, // 1% of 12 = 0.12
    fontFamily: AppFonts.gilroyMedium.value,
    color: AppColors.instance.white,
  );
}
