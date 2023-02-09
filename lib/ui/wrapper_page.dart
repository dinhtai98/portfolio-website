// ignore_for_file: avoid_web_libraries_in_flutter

import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio_website/core/utils/constant.dart';
import 'package:portfolio_website/core/utils/custom_slide_transition.dart';
import 'package:portfolio_website/core/utils/color_utils.dart';
import 'package:portfolio_website/core/utils/custom_button.dart';
import 'package:portfolio_website/core/utils/enum.dart';
import 'package:portfolio_website/core/utils/text_style_utils.dart';
import 'package:portfolio_website/global/global_data.dart';
import 'package:portfolio_website/global/locator.dart';

part 'widgets/dropdown_widget.dart';
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
    var globalData = locator<GlobalData>();
    var isMobile = globalData.isMobileSize;
    return Stack(
      children: [
        SizedBox(
          height: isMobile ? 600.sp : 250.sp,
          child: Container(
            width: double.infinity,
            color: ColorUtils.black,
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: SizedBox(
            height: isMobile ? 600.sp : 250.sp,
            child: Container(
              width: isMobile ? double.infinity : 250.sp,
              color: ColorUtils.darkBlue,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
            children: const [
              _NavigationBar(),
              _WrapperWidget(),
            ],
          ),
        ),
      ],
    );
  }
}

class _NavigationBar extends StatelessWidget {
  const _NavigationBar();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: 100,
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/logo.png',
            width: 80.r,
            height: 80.r,
            fit: BoxFit.fill,
          ),
          if (size.width >= Constants.minWidthScale)
            SizedBox(width: size.width - 200.w, child: const _NavLink())
          else
            const _DropdownWidget(),
        ],
      ),
    );
  }
}

class _NavLink extends StatelessWidget {
  const _NavLink();

  @override
  Widget build(BuildContext context) {
    var globalData = locator<GlobalData>();
    return Row(
      children: [
        Expanded(
          child: CustomButton(
            onPressed: () {
              globalData.scrollTo(Pages.info);
            },
            name: 'Info',
            backgroundColor: ColorUtils.darkBlue,
          ),
        ),
        Expanded(
          child: CustomButton(
            onPressed: () {
              globalData.scrollTo(Pages.workExperience);
            },
            name: 'Experience',
            backgroundColor: ColorUtils.darkBlue,
          ),
        ),
        Expanded(
          child: CustomButton(
            onPressed: () {
              globalData.scrollTo(Pages.skillset);
            },
            name: 'Skillset',
            backgroundColor: ColorUtils.darkBlue,
          ),
        ),
        Expanded(
          child: CustomButton(
            onPressed: () {
              globalData.scrollTo(Pages.myProjectsDemo);
            },
            name: 'Project Demo',
            backgroundColor: ColorUtils.darkBlue,
          ),
        ),
        Expanded(
          child: CustomButton(
            onPressed: () {
              globalData.scrollTo(Pages.aboutMe);
            },
            name: 'About me',
            backgroundColor: ColorUtils.blue,
          ),
        )
      ],
    );
  }
}
