import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio_website/core/utils/color_utils.dart';
import 'package:portfolio_website/core/utils/text_style_utils.dart';
import 'package:portfolio_website/global/global_data.dart';
import 'package:portfolio_website/global/locator.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('Build FooterPage');
    if (locator<GlobalData>().isMobileSize) {
      return Container(
        height: 180.sp,
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
                    height: 80.sp,
                    width: 80.sp,
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () async => await launchUrl(
                            Uri.parse('https://www.facebook.com/tai.dinh.1011'),
                            mode: LaunchMode.inAppWebView),
                        child: Image.asset(
                          'assets/images/facebook.png',
                          height: 25.sp,
                          width: 25.sp,
                        ),
                      ),
                      InkWell(
                        onTap: () async => await launchUrl(
                            Uri.parse('https://github.com/dinhtai98'),
                            mode: LaunchMode.inAppWebView),
                        child: Image.asset(
                          'assets/images/github.png',
                          height: 25.sp,
                          width: 25.sp,
                        ),
                      ),
                      InkWell(
                        onTap: () async => await launchUrl(
                            Uri.parse(
                                'https://www.linkedin.com/in/tai-dinh-b16835233/'),
                            mode: LaunchMode.inAppWebView),
                        child: Image.asset(
                          'assets/images/linkedin.png',
                          height: 25.sp,
                          width: 25.sp,
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
                style: TextStyleUtils.regular(12.sp)
                    .copyWith(color: ColorUtils.transparent07),
              ),
            )
          ],
        ),
      );
    } else {
      return Container(
        height: 55.sp,
        color: ColorUtils.darkBlue,
        padding: EdgeInsets.fromLTRB(15.w, 5.sp, 10.sp, 10.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20.sp,
                    width: 20.sp,
                    child: Image.asset(
                      'assets/images/logo.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () async => await launchUrl(
                            Uri.parse('https://www.facebook.com/tai.dinh.1011'),
                            mode: LaunchMode.inAppWebView),
                        child: Image.asset(
                          'assets/images/facebook.png',
                          height: 10.sp,
                          width: 10.sp,
                        ),
                      ),
                      InkWell(
                        onTap: () async => await launchUrl(
                            Uri.parse('https://github.com/dinhtai98'),
                            mode: LaunchMode.inAppWebView),
                        child: Image.asset(
                          'assets/images/github.png',
                          height: 10.sp,
                          width: 10.sp,
                        ),
                      ),
                      InkWell(
                        onTap: () async => await launchUrl(
                            Uri.parse(
                                'https://www.linkedin.com/in/tai-dinh-b16835233/'),
                            mode: LaunchMode.inAppWebView),
                        child: Image.asset(
                          'assets/images/linkedin.png',
                          height: 10.sp,
                          width: 10.sp,
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
                style: TextStyleUtils.regular(5.sp)
                    .copyWith(color: ColorUtils.transparent07),
              ),
            )
          ],
        ),
      );
    }
  }
}
