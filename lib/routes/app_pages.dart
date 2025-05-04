import 'package:get/get.dart';
import 'package:oz_vpn/modules/onboarding/onboarding_binding.dart';
import 'package:oz_vpn/modules/onboarding/onboarding_screen.dart';
import 'package:oz_vpn/modules/splash/splash_binding.dart';
import 'package:oz_vpn/modules/splash/splash_screen.dart';
part 'app_routes.dart';

final class AppPages {
  AppPages._();

  static final AppPages instance = AppPages._();

  final String initial = Routes.onboarding;

  final List<GetPage<dynamic>> routes = <GetPage<dynamic>>[
    GetPage(
      name: Routes.splash,
      page: () => const SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.onboarding,
      page: () => const OnboardingScreen(),
      binding: OnboardingBinding(),
    ),
  ];
}
