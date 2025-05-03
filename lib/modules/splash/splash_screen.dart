import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oz_vpn/modules/splash/splash_controller.dart';
import 'package:oz_vpn/shared/constants/fonts.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "test",
          style: TextStyle(
            color: Colors.red,
            fontSize: 30,
            fontFamily: AppFonts.gilroyLight.value,
          ),
        ),
      ),
    );
  }
}
