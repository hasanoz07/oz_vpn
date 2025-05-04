import 'package:flutter/material.dart';

enum AppImages {
  onboaronboarding('onboarding');

  const AppImages(this.value);
  final String value;

  Image get png => Image.asset('assets/images/$value.png');
}

extension AppImagesExtension on AppImages {
  Image pngWithAttiributes({
    Color? color,
    double? height,
    double? width,
    BoxFit? fit,
  }) {
    return Image.asset(
      'assets/images/$value.png',
      color: color,
      height: height,
      width: width,
      fit: fit,
    );
  }
}
