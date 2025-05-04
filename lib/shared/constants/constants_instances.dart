import 'package:oz_vpn/shared/constants/border_radius.dart';
import 'package:oz_vpn/shared/constants/colors.dart';
import 'package:oz_vpn/shared/constants/paddings.dart';
import 'package:oz_vpn/shared/constants/strings.dart';

final class ConstantsInstances {
  ConstantsInstances._();

  static ConstantsInstances instance = ConstantsInstances._();

  // General Instances
  final AppColors colors = AppColors.instance;
  final AppStrings strings = AppStrings.instance;
  final AppPaddings paddings = AppPaddings.instance;
  final AppBorderRadius borderRadius = AppBorderRadius.instance;
}
