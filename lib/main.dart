// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:portfolio_website/core/utils/custom_scroll_behavior.dart';

import 'package:portfolio_website/global/locator.dart';
import 'package:portfolio_website/global/router.dart';

void main() {
  mainDelegate();
}

void configureApp() {
  setUrlStrategy(PathUrlStrategy());
}

Future<void> mainDelegate() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  configureApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, state) {
        return MaterialApp.router(
          title: 'Dinh Tai - Device developer',
          scrollBehavior: MyCustomScrollBehavior(),
          routerConfig: RouterConfiguration().router,
          theme: ThemeData(
            primarySwatch: Colors.blue,
            scaffoldBackgroundColor: Colors.white,
            fontFamily: 'Sen',
          ),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
