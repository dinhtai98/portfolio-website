import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio_website/global/router.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text('button'),
        onPressed: () {
          Get.toNamed(MyRouter.homePage);
        },
      ),
    );
  }
}
