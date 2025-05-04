import 'package:get/get.dart' show Translations;

class AppTranslations extends Translations {
  AppTranslations({required this.languages});
  final Map<String, Map<String, String>> languages;
  @override
  Map<String, Map<String, String>> get keys {
    return languages;
  }
}
