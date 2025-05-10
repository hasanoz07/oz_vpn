import 'package:flutter/widgets.dart';
import 'package:oz_vpn/shared/extensions/padding_ext.dart';

final class AppPaddings {
  const AppPaddings._();

  static const AppPaddings instance = AppPaddings._();

  EdgeInsets get horizontal => 24.padHorizontal;
  EdgeInsets get horizontal12 => 12.padHorizontal;
  EdgeInsets get vertical => 16.padVertical;
  EdgeInsets get vertical10 => 10.padVertical;
  EdgeInsets get all => 12.padAll;
}
