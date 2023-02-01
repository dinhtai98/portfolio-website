import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:portfolio_website/core/utils/navigation_utils.dart';
import 'package:portfolio_website/global/locator.dart';
import 'package:portfolio_website/global/my_router_observer.dart';
import 'package:portfolio_website/global/router.dart';

void main() {
  mainDelegate();
}

Future<void> mainDelegate() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, state) {
        return GetMaterialApp(
          title: 'Dinh Tai - Device developer',
          navigatorKey: NavigationUtils.navigatorKey,
          onGenerateRoute: (settings) => MyRouter.generateRoute(settings),
          navigatorObservers: [MyRouteObserver()],
          initialRoute: MyRouter.loadingPage,
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
