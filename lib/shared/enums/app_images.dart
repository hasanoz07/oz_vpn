import 'package:flutter/material.dart';

enum AppImages {
  test('test');

  const AppImages(this.value);
  final String value;

  Image get png => Image.asset('assets/images/$value.png');
}

extension AppImagesExtension on AppImages {
  Image pngWithAttiributes({required Color color, double? height}) {
    return Image.asset(
      'assets/images/$value.png',
      color: color,
      height: height,
    );
  }
}
