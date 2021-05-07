import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:trial_draft_tool/ui/homePage.dart';

var rootHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return HomePage();
});

class AppRoutes {
  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler = new Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      print('ROUTE WAS NOT FOUND !!!');
    });
  }
}
