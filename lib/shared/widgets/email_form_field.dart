import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oz_vpn/shared/constants/constants_instances.dart';
import 'package:oz_vpn/shared/enums/app_icons.dart';

class EmailFormField extends StatelessWidget {
  const EmailFormField({
    required this.focusNode,
    required this.hasFocus,
    required this.textEditingController,
    super.key,
  });
  final Rx<TextEditingController> textEditingController;
  final FocusNode focusNode;
  final RxBool hasFocus;

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
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            hintText: constants.strings.email.tr,
            hintStyle: constants.textStyles.fieldText1.copyWith(color: constants.colors.gray),
            prefixIcon: Padding(
              padding: constants.paddings.all,
              child: AppIcons.email.svgWithAttiributes(
                color: hasFocus.value ? constants.colors.appBlack : constants.colors.gray,
              ),
            ),
            labelStyle: constants.textStyles.fieldText1.copyWith(color: constants.colors.appBlack),
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
