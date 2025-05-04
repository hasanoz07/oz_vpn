import 'package:get/get.dart';
import 'package:oz_vpn/shared/constants/constants_instances.dart';
import 'package:url_launcher/url_launcher.dart';

class OnboardingController extends GetxController {
  final constants = ConstantsInstances.instance;
  final Uri watchTutorialUri = Uri.parse('https://www.hasanoz.tech/');
  Future<void> watchTutorial() async {
    if (!await launchUrl(watchTutorialUri, mode: LaunchMode.inAppWebView)) {
      throw Exception('Could not launch $watchTutorialUri');
    }
  }
}
