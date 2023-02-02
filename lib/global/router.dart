import 'package:flutter/material.dart';
import 'package:portfolio_website/home_page.dart';
import 'package:portfolio_website/ui/loading_page.dart';
import 'package:portfolio_website/ui/not_found_page.dart';

class MyRouter {
  static const String loadingPage = '/loading-page';
  static const String homePage = '/home-page';
  static PageRouteBuilder _buildRouteNavigationWithoutEffect(
      RouteSettings settings, Widget widget) {
    return PageRouteBuilder(
      pageBuilder: (_, __, ___) => widget,
      transitionDuration: Duration.zero,
      settings: settings,
    );
  }

  // Example for Effect
  // static PageRouteBuilder _buildRouteNavigationEffect(
  //     RouteSettings settings, Widget widget) {
  //   return PageRouteBuilder(
  //     pageBuilder: (_, __, ___) => widget,
  //     transitionsBuilder: (context, animation, secondaryAnimation, child) =>
  //         AnimatedBuilder(
  //       animation: animation,
  //       builder: (context, widget) => Transform.scale(
  //         scale: animation.value,
  //         alignment: Alignment.bottomRight,
  //         child: child,
  //       ),
  //     ),
  //     transitionDuration: const Duration(milliseconds: 500),
  //     settings: settings,
  //   );
  // }

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case loadingPage:
        return _buildRouteNavigationWithoutEffect(
          settings,
          const LoadingPage(),
        );
      case homePage:
        return _buildRouteNavigationWithoutEffect(
          settings,
          const HomePage(),
        );
      default:
        return _buildRouteNavigationWithoutEffect(
          settings,
          const NotFoundPage(),
        );
    }
  }

  static void onRouteChanged(String screenName) {}
}
