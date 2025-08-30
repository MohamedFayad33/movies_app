import 'package:flutter/material.dart';
import 'package:movies_app/core/routes/pages_routes_name.dart';
import 'package:movies_app/modules/splash/splash_view.dart';

abstract class Routes {
  static Map<String, Widget Function(BuildContext)> route(
    BuildContext context,
  ) {
    return {PagesRoutesName.splash: (context) => const SplashView()};
  }
}
