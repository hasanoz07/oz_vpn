import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:oz_vpn/shared/constants/constants_instances.dart';

class VerifyController extends GetxController {
  final constants = ConstantsInstances.instance;
  late final TextEditingController pinController;
  @override
  void onInit() {
    pinController = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    pinController.dispose();
    super.onClose();
  }
}
