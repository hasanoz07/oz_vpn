import 'package:oz_vpn/data/models/language/language_model.dart';
import 'package:oz_vpn/shared/constants/strings.dart';

final class AppLangs {
  AppLangs._();

  static List<LanguageModel> languages = [
    LanguageModel(
      languageName: AppStrings.instance.english,
      languageCode: 'en',
      countryCode: 'US',
    ),
    //! Uncomment the following lines to add Turkish language support
    // LanguageModel(
    //   languageName: AppStrings.instance.turkish,
    //   languageCode: 'tr',
    //   countryCode: 'TR',
    // ),
  ];
}
