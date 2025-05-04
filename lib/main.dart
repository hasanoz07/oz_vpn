import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:oz_vpn/controllers/localization_controller.dart';
import 'package:oz_vpn/init/di.dart';
import 'package:oz_vpn/routes/app_pages.dart';
import 'package:oz_vpn/shared/constants/app_translations.dart';
import 'package:oz_vpn/shared/constants/strings.dart';
import 'package:oz_vpn/shared/helpers/language_helpers.dart';
import 'package:oz_vpn/shared/themes/light_theme.dart';

void main() async {
  await DependencyInjection.instance.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final designSize = Size(constraints.maxWidth, constraints.maxHeight);
        return ScreenUtilInit(
          designSize: designSize,
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (_, __) {
            return GetBuilder<LocalizationController>(
              builder: (localizationController) {
                return GetMaterialApp(
                  title: AppStrings.instance.appName,
                  translations: AppTranslations(
                    languages: DependencyInjection.languages,
                  ),
                  fallbackLocale: Locale(
                    LanguageHelpers.instance.currentLanguageCode,
                    LanguageHelpers.instance.currentCountryCode,
                  ),
                  locale: localizationController.locale,
                  debugShowCheckedModeBanner: false,
                  theme: LightTheme.instance.lightTheme,
                  initialRoute: AppPages.instance.initial,
                  getPages: AppPages.instance.routes,
                );
              },
            );
          },
        );
      },
    );
  }
}

class CustomTheme {}
