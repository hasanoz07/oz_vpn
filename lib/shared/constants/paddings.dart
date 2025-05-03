import 'package:flutter/widgets.dart';
import 'package:oz_vpn/shared/extensions/padding_ext.dart';

final class AppPaddings {
  const AppPaddings._();

  static const AppPaddings instance = AppPaddings._();

  EdgeInsets get horizontal => 12.padHorizontal;
  EdgeInsets get vertical => 8.padVertical;
  EdgeInsets get all => 12.padAll;
}
