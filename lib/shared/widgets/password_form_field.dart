import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:get/get.dart';
import 'package:oz_vpn/shared/constants/constants_instances.dart';
import 'package:oz_vpn/shared/enums/app_icons.dart';

class PasswordFormField extends StatelessWidget {
  const PasswordFormField({
    required this.textEditingController,
    required this.focusNode,
    required this.hasFocus,
    required this.passwordVisible,
    required this.hintText,
    super.key,
  });

  final Rx<TextEditingController> textEditingController;
  final FocusNode focusNode;
  final RxBool hasFocus;
  final RxBool passwordVisible;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    final constants = ConstantsInstances.instance;

    return Obx(
      () => Padding(
        padding: constants.paddings.vertical10,
        child: TextFormField(
          controller: textEditingController.value,
          cursorColor: constants.colors.appBlack,
          focusNode: focusNode,
          onTapOutside: (value) => focusNode.unfocus(),
          onFieldSubmitted: (value) => focusNode.unfocus(),
          onTap: focusNode.requestFocus,
          obscureText: passwordVisible.value,
          keyboardType: TextInputType.visiblePassword,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: constants.textStyles.fieldText1.copyWith(color: constants.colors.gray),
            prefixIcon: Padding(
              padding: constants.paddings.all,
              child: AppIcons.lock.svgWithAttiributes(
                color: hasFocus.value ? constants.colors.appBlack : constants.colors.gray,
              ),
            ),
            suffixIcon: Bounceable(
              onTap: () => passwordVisible.value = !passwordVisible.value,
              child: Padding(
                padding: constants.paddings.all,
                child: AppIcons.eye.svgWithAttiributes(
                  color: hasFocus.value ? constants.colors.appBlack : constants.colors.gray,
                ),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: constants.colors.lightGray2),
              borderRadius: constants.borderRadius.radiusAll18,
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: constants.colors.secondary),
              borderRadius: constants.borderRadius.radiusAll18,
            ),
          ),
        ),
      ),
    );
  }
}
