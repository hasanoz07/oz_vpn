import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:oz_vpn/data/local/local_storage/local_storage_service.dart'
    show LocalStorageService;

final class DependencyInjection {
  DependencyInjection._();

  static final DependencyInjection instance = DependencyInjection._();
  static late final Map<String, Map<String, String>> languages;

  Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    unawaited(
      SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]),
    );

    await LocalStorageService.instance.init();
  }
}
