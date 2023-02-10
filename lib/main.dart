// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_website/core/blocs/bloc/size_bloc.dart';
import 'package:portfolio_website/core/utils/custom_scroll_behavior.dart';

import 'package:portfolio_website/global/locator.dart';
import 'package:portfolio_website/global/router.dart';

void main() {
  mainDelegate();
}

// void configureApp() {
//   setUrlStrategy(PathUrlStrategy());
// }

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
    return BlocProvider(
      create: (context) => SizeBloc(),
      child: MaterialApp.router(
        title: 'Dinh Tai - Device developer',
        scrollBehavior: MyCustomScrollBehavior(),
        routerConfig: RouterConfiguration().router,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Colors.white,
          fontFamily: 'Sen',
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
