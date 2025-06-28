import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:oz_vpn/data/local/local_storage/local_storage_service.dart' show LocalStorageService;
import 'package:oz_vpn/firebase_options.dart';
import 'package:oz_vpn/shared/constants/dep.dart' as dep;

final class DependencyInjection {
  DependencyInjection._();

  static final DependencyInjection instance = DependencyInjection._();
  static late final Map<String, Map<String, String>> languages;

  Future<void> init() async {
    await LocalStorageService.instance.init();
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
    unawaited(SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]));
    languages = await dep.init();
  }
}
