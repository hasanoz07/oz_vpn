import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

enum AppIcons {
  appIcon('app_icon'),
  google('google'),
  apple('apple'),
  email('email'),
  lock('lock'),
  eye('eye'),
  backArrow('back_arrow'),
  play('play');

  const AppIcons(this.value);
  final String value;

  SvgPicture get svg => SvgPicture.asset('assets/icons/$value.svg');
}

extension AppIconsExt on AppIcons {
  SvgPicture svgWithAttiributes({required Color color, double? height}) {
    return SvgPicture.asset(
      'assets/icons/$value.svg',
      colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
      height: height,
    );
  }
}
