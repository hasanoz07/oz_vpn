import 'package:get/get.dart';
import 'package:oz_vpn/modules/forgot_password/forgot_password_binding.dart';
import 'package:oz_vpn/modules/forgot_password/forgot_password_screen.dart';
import 'package:oz_vpn/modules/login/login_binding.dart';
import 'package:oz_vpn/modules/login/login_screen.dart';
import 'package:oz_vpn/modules/onboarding/onboarding_binding.dart';
import 'package:oz_vpn/modules/onboarding/onboarding_screen.dart';
import 'package:oz_vpn/modules/splash/splash_binding.dart';
import 'package:oz_vpn/modules/splash/splash_screen.dart';
import 'package:oz_vpn/modules/verify/verify_binding.dart';
import 'package:oz_vpn/modules/verify/verify_screen.dart';

part 'app_routes.dart';

final class AppPages {
  AppPages._();

  static final AppPages instance = AppPages._();

  final String initial = Routes.onboarding;

  final List<GetPage<dynamic>> routes = <GetPage<dynamic>>[
    GetPage(name: Routes.splash, page: () => const SplashScreen(), binding: SplashBinding()),
    GetPage(name: Routes.onboarding, page: () => const OnboardingScreen(), binding: OnboardingBinding()),
    GetPage(name: Routes.login, page: () => const LoginScreen(), binding: LoginBinding()),
    GetPage(name: Routes.forgotPassword, page: ForgotPasswordScreen.new, binding: ForgotPasswordBinding()),
    GetPage(name: Routes.verify, page: () => const VerifyScreen(), binding: VerifyBinding()),
  ];
}
