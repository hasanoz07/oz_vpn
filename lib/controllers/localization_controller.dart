import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oz_vpn/data/local/local_storage/local_storage_service.dart';
import 'package:oz_vpn/data/models/language/language_model.dart';
import 'package:oz_vpn/shared/constants/langs.dart';
import 'package:oz_vpn/shared/enums/local_storage_keys.dart';
import 'package:oz_vpn/shared/helpers/language_helpers.dart';

class LocalizationController extends GetxController implements GetxService {
  LocalizationController({required this.localStorage}) {
    loadCurrentLanguage();
  }
  final LocalStorageService localStorage;
  final RxString lang = ''.obs;

  @override
  void onInit() {
    super.onInit();
    // Default language English
    lang.value = LanguageHelpers.instance.currentLanguageCode;
  }

  Locale _locale = Locale(
    AppLangs.languages.first.languageCode,
    AppLangs.languages.first.countryCode,
  );
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  List<LanguageModel> _languages = [];

  Locale get locale => _locale;

  List<LanguageModel> get languages => _languages;

  Future<void> loadCurrentLanguage() async {
    _locale = Locale(
      LanguageHelpers.instance.currentLanguageCode,
      localStorage.retrieveData(LocalStorageKeys.countryCode.name) ??
          LanguageHelpers.instance.currentCountryCode,
    );

    for (var i = 0; i < AppLangs.languages.length; i++) {
      if (AppLangs.languages[i].languageCode == _locale.languageCode) {
        _selectedIndex = i;
        break;
      }
    }
    _languages = [];
    _languages.addAll(AppLangs.languages);
    update();
  }

  void setLanguage(Locale locale) {
    Get.updateLocale(locale);
    _locale = locale;
    saveLanguage(_locale);
    update();
  }

  void setSelectedIndex(int index) {
    _selectedIndex = index;
    update();
  }

  Future<void> saveLanguage(Locale locale) async {
    localStorage.saveData(
      LocalStorageKeys.languageCode.name,
      locale.languageCode,
    );
    localStorage.saveData(
      LocalStorageKeys.countryCode.name,
      locale.countryCode,
    );
  }
}
