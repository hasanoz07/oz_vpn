import 'dart:io';

import 'package:oz_vpn/data/local/local_storage/local_storage_service.dart';
import 'package:oz_vpn/shared/constants/langs.dart';
import 'package:oz_vpn/shared/enums/local_storage_keys.dart';

final class LanguageHelpers {
  const LanguageHelpers._();

  static const LanguageHelpers instance = LanguageHelpers._();

  static final LocalStorageService _localStorageService =
      LocalStorageService.instance;

  static String get defaultLanguageCode => _getDefaultLanguageCode();
  static String get defaultCountryCode => _getDefaultCountryCode();

  static String _getDefaultLanguageCode() {
    final deviceLanguageCode = Platform.localeName.split('_').first;
    final supportedLanguages =
        AppLangs.languages.map((e) => e.languageCode).toList();

    if (supportedLanguages.contains(deviceLanguageCode)) {
      return deviceLanguageCode;
    }
    return 'en';
  }

  static String _getDefaultCountryCode() {
    final deviceCountryCode = Platform.localeName.split('_').last;
    final supportedCountries =
        AppLangs.languages.map((e) => e.countryCode).toList();

    if (supportedCountries.contains(deviceCountryCode)) {
      return deviceCountryCode;
    }
    return 'US';
  }

  static String _getCurrentLanguageCode() {
    return _localStorageService.retrieveData(
          LocalStorageKeys.languageCode.name,
        ) ??
        defaultLanguageCode;
  }

  static String _getCurrentCountryCode() {
    return _localStorageService.retrieveData(
          LocalStorageKeys.countryCode.name,
        ) ??
        defaultCountryCode;
  }

  String get currentLanguageCode => _getCurrentLanguageCode();
  String get currentCountryCode => _getCurrentCountryCode();
}
