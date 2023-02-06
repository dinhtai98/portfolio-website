import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio_website/core/utils/color_utils.dart';
import 'package:portfolio_website/core/utils/text_style_utils.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('Build FooterPage');
    return Container(
      height: 80.sp,
      color: ColorUtils.darkBlue,
      padding: EdgeInsets.fromLTRB(15.w, 5.sp, 10.sp, 15.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  height: 30.sp,
                  width: 30.sp,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () async => await launchUrl(
                          Uri.parse('https://www.facebook.com/tai.dinh.1011'),
                          mode: LaunchMode.inAppWebView),
                      child: Image.asset(
                        'assets/images/facebook.png',
                        height: 15.sp,
                        width: 15.sp,
                      ),
                    ),
                    InkWell(
                      onTap: () async => await launchUrl(
                          Uri.parse('https://github.com/dinhtai98'),
                          mode: LaunchMode.inAppWebView),
                      child: Image.asset(
                        'assets/images/github.png',
                        height: 15.sp,
                        width: 15.sp,
                      ),
                    ),
                    InkWell(
                      onTap: () async => await launchUrl(
                          Uri.parse(
                              'https://www.linkedin.com/in/tai-dinh-b16835233/'),
                          mode: LaunchMode.inAppWebView),
                      child: Image.asset(
                        'assets/images/linkedin.png',
                        height: 15.sp,
                        width: 15.sp,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Text(
              'No Copyright 2023 • Dinh Tai.',
              style: TextStyleUtils.regular(7.sp)
                  .copyWith(color: ColorUtils.transparent07),
            ),
          )
        ],
      ),
    );
  }
}
