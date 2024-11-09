import 'package:grow_spirit/screen/home_page.dart';
import 'package:flutter/material.dart';
import 'package:grow_spirit/screen/login_page.dart';

class Routes {
  static String homePage = "/";
  static String loginPage = "/login";

  static Map<String, WidgetBuilder> coll = Map.fromEntries({
    MapEntry(Routes.homePage, (context) => const HomePage(title: "GrowSpirit",)),
    MapEntry(Routes.loginPage, (context) => const LoginPage())
  });
}
