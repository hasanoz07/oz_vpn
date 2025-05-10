import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oz_vpn/shared/constants/colors.dart';
import 'package:oz_vpn/shared/constants/fonts.dart';

final class AppTextStyles {
  const AppTextStyles._();

  static const AppTextStyles instance = AppTextStyles._();

  TextStyle get semiBoldItalic32 =>
      TextStyle(fontSize: 32.sp, fontFamily: AppFonts.gilroySemiBoldItalic.value, color: AppColors.instance.white);
  TextStyle get medium14 => TextStyle(
    fontSize: 14.sp,
    height: 1,
    letterSpacing: 0.14,
    fontFamily: AppFonts.gilroyMedium.value,
    color: AppColors.instance.white,
  );
  TextStyle get medium12 => TextStyle(
    fontSize: 12.sp,
    height: 1,
    letterSpacing: 0.12,
    fontFamily: AppFonts.gilroyMedium.value,
    color: AppColors.instance.white,
  );

  //!Defined styles

  //?Paragraphs
  TextStyle get paragraph1 => TextStyle(
    fontSize: 12.sp,
    height: 1.5, // 18 / 12 = 1.5
    letterSpacing: 0.12, // 1% of 12 = 0.12
    fontFamily: AppFonts.gilroyMedium.value,
    color: AppColors.instance.white,
  );
  TextStyle get paragraph2 => TextStyle(
    fontSize: 11.sp,
    height: 1.27, // 14 / 11 = 1.5
    letterSpacing: 0.11, // 1% of 14 = 0.14
    fontFamily: AppFonts.gilroyMedium.value,
    color: AppColors.instance.white,
  );
  TextStyle get paragraph3 => TextStyle(
    fontSize: 10.sp,
    height: 1.5, // 12 / 10 = 1.5
    letterSpacing: 0, // 1% of 12 = 0.12
    fontFamily: AppFonts.gilroyMedium.value,
    color: AppColors.instance.white,
  );
  TextStyle get paragraph4 => TextStyle(
    fontSize: 9.sp,
    height: 1, // 12 / 10 = 1.5
    letterSpacing: 0, // 1% of 12 = 0.12
    fontFamily: AppFonts.gilroyMedium.value,
    color: AppColors.instance.white,
  );
  //?Headings
  TextStyle get heading1 => TextStyle(
    fontSize: 24.sp,
    height: 1,
    letterSpacing: 0,
    fontFamily: AppFonts.gilroySemiBold.value,
    color: AppColors.instance.white,
  );
  //?Fild Texts
  TextStyle get fieldText1 => TextStyle(
    fontSize: 14.sp,
    height: 1,
    letterSpacing: 0,
    fontFamily: AppFonts.gilroyMedium.value,
    color: AppColors.instance.white,
  );
  TextStyle get fieldText2 => TextStyle(
    fontSize: 16.sp,
    height: 1,
    letterSpacing: 0,
    fontFamily: AppFonts.gilroySemiBold.value,
    color: AppColors.instance.white,
  );
}
