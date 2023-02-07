// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:get/get.dart';

import 'package:portfolio_website/core/utils/navigation_utils.dart';
import 'package:portfolio_website/global/locator.dart';
import 'package:portfolio_website/global/my_router_observer.dart';
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
  // configureApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, state) {
        return GetMaterialApp(
          title: 'Dinh Tai - Device developer',
          navigatorKey: NavigationUtils.navigatorKey,
          onGenerateRoute: (settings) => MyRouter.generateRoute(settings),
          navigatorObservers: [MyRouteObserver()],
          initialRoute: MyRouter.homePage,
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
