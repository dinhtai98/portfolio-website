import 'package:flutter/material.dart';
import 'package:portfolio_website/core/utils/color_utils.dart';
import 'package:portfolio_website/core/utils/constant.dart';
import 'package:portfolio_website/core/utils/responsive.dart';
import 'package:portfolio_website/core/utils/text_style_utils.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    // debugPrint('Build FooterPage');
    return Responsive(
        mobile: Container(
          height: 180,
          color: ColorUtils.darkBlue,
          padding: const EdgeInsets.fromLTRB(15, 5, 10, 15),
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
                      height: 80,
                      width: 80,
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () async => await launchUrl(
                              Uri.parse(
                                  'https://www.facebook.com/tai.dinh.1011'),
                              mode: LaunchMode.inAppWebView),
                          child: Image.asset(
                            'assets/images/facebook.png',
                            height: 25,
                            width: 25,
                          ),
                        ),
                        InkWell(
                          onTap: () async => await launchUrl(
                              Uri.parse('https://github.com/dinhtai98'),
                              mode: LaunchMode.inAppWebView),
                          child: Image.asset(
                            'assets/images/github.png',
                            height: 25,
                            width: 25,
                          ),
                        ),
                        InkWell(
                          onTap: () async => await launchUrl(
                              Uri.parse(
                                  'https://www.linkedin.com/in/tai-dinh-b16835233/'),
                              mode: LaunchMode.inAppWebView),
                          child: Image.asset(
                            'assets/images/linkedin.png',
                            height: 25,
                            width: 25,
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
                  style: TextStyleUtils.regular(12)
                      .copyWith(color: ColorUtils.transparent07),
                ),
              )
            ],
          ),
        ),
        tablet: Container(
          height: 200,
          color: ColorUtils.darkBlue,
          padding: const EdgeInsets.fromLTRB(25, 5, 10, 10),
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
                      height: 100,
                      width: 100,
                      child: Image.asset(
                        'assets/images/logo.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () async => await launchUrl(
                              Uri.parse(
                                  'https://www.facebook.com/tai.dinh.1011'),
                              mode: LaunchMode.inAppWebView),
                          child: Image.asset(
                            'assets/images/facebook.png',
                            height: 40,
                            width: 40,
                          ),
                        ),
                        InkWell(
                          onTap: () async => await launchUrl(
                              Uri.parse('https://github.com/dinhtai98'),
                              mode: LaunchMode.inAppWebView),
                          child: Image.asset(
                            'assets/images/github.png',
                            height: 40,
                            width: 40,
                          ),
                        ),
                        InkWell(
                          onTap: () async => await launchUrl(
                              Uri.parse(
                                  'https://www.linkedin.com/in/tai-dinh-b16835233/'),
                              mode: LaunchMode.inAppWebView),
                          child: Image.asset(
                            'assets/images/linkedin.png',
                            height: 40,
                            width: 40,
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
                  style: TextStyleUtils.regular(Constants.descriptionSize)
                      .copyWith(color: ColorUtils.transparent07),
                ),
              )
            ],
          ),
        ),
        desktop: Container(
          height: 200,
          color: ColorUtils.darkBlue,
          padding: const EdgeInsets.fromLTRB(25, 5, 10, 10),
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
                      height: 100,
                      width: 100,
                      child: Image.asset(
                        'assets/images/logo.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () async => await launchUrl(
                              Uri.parse(
                                  'https://www.facebook.com/tai.dinh.1011'),
                              mode: LaunchMode.inAppWebView),
                          child: Image.asset(
                            'assets/images/facebook.png',
                            height: 40,
                            width: 40,
                          ),
                        ),
                        InkWell(
                          onTap: () async => await launchUrl(
                              Uri.parse('https://github.com/dinhtai98'),
                              mode: LaunchMode.inAppWebView),
                          child: Image.asset(
                            'assets/images/github.png',
                            height: 40,
                            width: 40,
                          ),
                        ),
                        InkWell(
                          onTap: () async => await launchUrl(
                              Uri.parse(
                                  'https://www.linkedin.com/in/tai-dinh-b16835233/'),
                              mode: LaunchMode.inAppWebView),
                          child: Image.asset(
                            'assets/images/linkedin.png',
                            height: 40,
                            width: 40,
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
                  style: TextStyleUtils.regular(Constants.descriptionSize)
                      .copyWith(color: ColorUtils.transparent07),
                ),
              )
            ],
          ),
        ));
  }
}
