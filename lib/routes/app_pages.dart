import 'package:get/get.dart';
import 'package:oz_vpn/modules/splash/splash_binding.dart';
import 'package:oz_vpn/modules/splash/splash_screen.dart';
part 'app_routes.dart';

final class AppPages {
  AppPages._();

  static final AppPages instance = AppPages._();

  final String initial = Routes.splash;

  final List<GetPage<dynamic>> routes = <GetPage<dynamic>>[
    GetPage(
      name: Routes.splash,
      page: () => const SplashScreen(),
      binding: SplashBinding(),
    ),
  ];
}
