import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oz_vpn/shared/constants/border_radius.dart';
import 'package:oz_vpn/shared/constants/colors.dart';
import 'package:oz_vpn/shared/constants/fonts.dart';

final class LightTheme {
  LightTheme._();

  static final LightTheme instance = LightTheme._();

  final ThemeData lightTheme = ThemeData(
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: AppColors.instance.white,
      elevation: 0,
      iconTheme: IconThemeData(color: AppColors.instance.appBlack),
    ),
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(primary: AppColors.instance.white),
    splashFactory: NoSplash.splashFactory,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: AppColors.instance.black,
      backgroundColor: AppColors.instance.white,
      showUnselectedLabels: false,
      selectedLabelStyle: TextStyle(fontFamily: AppFonts.gilroyBold.value),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.instance.primary,
        foregroundColor: AppColors.instance.white,
        shape: RoundedRectangleBorder(borderRadius: AppBorderRadius.instance.radiusAll20),
        textStyle: TextStyle(fontFamily: AppFonts.gilroyBold.value, fontSize: 16.sp),
        minimumSize: Size(double.infinity, 60.h),
      ),
    ),
    textTheme: TextTheme(
      titleMedium: TextStyle(fontFamily: AppFonts.gilroyBold.value, fontSize: 18.sp, color: AppColors.instance.white),
      titleSmall: TextStyle(
        fontFamily: AppFonts.gilroySemiBold.value,
        fontSize: 16.sp,
        color: AppColors.instance.white,
      ),
      labelSmall: TextStyle(fontFamily: AppFonts.gilroyRegular.value, fontSize: 14.sp, color: AppColors.instance.white),
    ),
  );
}
