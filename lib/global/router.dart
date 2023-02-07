import 'package:flutter/material.dart';
import 'package:portfolio_website/home_page.dart';

class MyRouter {
  static const String homePage = '/home-page';
  static PageRouteBuilder _buildRouteNavigationWithoutEffect(
      RouteSettings settings, Widget widget) {
    return PageRouteBuilder(
      pageBuilder: (_, __, ___) => widget,
      transitionDuration: Duration.zero,
      settings: settings,
    );
  }

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homePage:
        return _buildRouteNavigationWithoutEffect(
          settings,
          const HomePage(),
        );
      default:
        return _buildRouteNavigationWithoutEffect(
          settings,
          const HomePage(),
        );
    }
  }

  static void onRouteChanged(String screenName) {}
}
