import 'package:trial_draft_tool/appComponent.dart';
import 'package:trial_draft_tool/appStoreApplication.dart';
import 'package:flutter/material.dart';
class Environment {
  static Environment value;

  String appName;
  Color primarySwatch;

  int databaseVersion = 1;
  String databaseName;

  Environment() {
    value = this;
    _init();
  }

  void _init() async {
    WidgetsFlutterBinding.ensureInitialized();

    var application = AppStoreApplication();
    await application.onCreate();
    runApp(AppComponent(application));
  }
}