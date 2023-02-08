import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio_website/home_page.dart';

const ValueKey<String> scaffoldKey = ValueKey<String>('App scaffold');

class RouterConfiguration {
  final GoRouter router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) =>
            const HomePage(),
        redirect: (context, state) async {
          return '/home-page';
        },
      ),
      GoRoute(
        name: 'home-page',
        path: '/home-page',
        redirect: (context, state) async {
          return '/home-page';
        },
        pageBuilder: (BuildContext context, GoRouterState state) =>
            FadeTransitionPage(
          key: scaffoldKey,
          child: const HomePage(),
        ),
      ),
    ],
  );
}

/// A page that fades in an out.
class FadeTransitionPage extends CustomTransitionPage<void> {
  /// Creates a [FadeTransitionPage].
  FadeTransitionPage({
    required LocalKey key,
    required Widget child,
  }) : super(
            key: key,
            transitionsBuilder: (BuildContext context,
                    Animation<double> animation,
                    Animation<double> secondaryAnimation,
                    Widget child) =>
                FadeTransition(
                  opacity: animation.drive(_curveTween),
                  child: child,
                ),
            child: child);

  static final CurveTween _curveTween = CurveTween(curve: Curves.bounceOut);
}
