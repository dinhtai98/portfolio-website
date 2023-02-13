// ignore_for_file: avoid_web_libraries_in_flutter

import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:portfolio_website/core/utils/custom_slide_transition.dart';
import 'package:portfolio_website/core/utils/color_utils.dart';
import 'package:portfolio_website/core/utils/custom_button.dart';
import 'package:portfolio_website/core/utils/responsive.dart';
import 'package:portfolio_website/core/utils/text_style_utils.dart';

part 'widgets/wrapper_widget.dart';

class WrapperPage extends StatefulWidget {
  const WrapperPage({super.key});

  @override
  State<WrapperPage> createState() => _WrapperPageState();
}

class _WrapperPageState extends State<WrapperPage> {
  @override
  Widget build(BuildContext context) {
    // debugPrint('Build Wrapper');
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            ColorUtils.black,
            ColorUtils.black,
            ColorUtils.darkBlue,
            ColorUtils.darkBlue
          ],
          stops: const [0.0, 0.3, 0.3, 1.0],
          end: Alignment.centerRight,
          begin: Alignment.centerLeft,
        ),
      ),
      child: const _WrapperWidget(),
    );
  }
}
