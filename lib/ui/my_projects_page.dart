import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio_website/core/utils/color_utils.dart';
import 'package:portfolio_website/core/utils/custom_animation_builder.dart';
import 'package:portfolio_website/core/utils/text_style_utils.dart';
import 'package:portfolio_website/global/global_data.dart';
import 'package:portfolio_website/global/locator.dart';
import 'package:url_launcher/url_launcher.dart';

class MyProjectsPage extends StatelessWidget {
  const MyProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // debugPrint('Build SkillSetPage');
    if (!locator<GlobalData>().isMobileSize) {
      return Container(
        height: 230.sp,
        color: ColorUtils.black,
        padding: EdgeInsets.fromLTRB(15.w, 10.sp, 10.sp, 15.w),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'MY PROJECTS DEMO',
                    style: TextStyleUtils.regular(6.sp)
                        .copyWith(color: ColorUtils.transparent07),
                  ),
                  Text(
                    "Work that I've done for past 2,5 years",
                    style: TextStyleUtils.bold(10.sp)
                        .copyWith(color: ColorUtils.white),
                  ),
                  const CustomAnimatedBuilder(
                    child: _BuildDescriptionProject(
                      image: 'assets/images/sale-app-v1.png',
                      description: 'Sales App',
                      linkGitHubProject:
                          'https://github.com/dinhtai98/ecommerce/tree/develop/ecommerce',
                      listTechnologies: [
                        'Flutter (Provider)',
                        'Hive database',
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(width: 2.sp),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const CustomAnimatedBuilder(
                    child: _BuildDescriptionProject(
                      image: 'assets/images/sale-app.png',
                      description: 'Sales App v2',
                      linkGitHubProject:
                          'https://github.com/dinhtai98/E_commerce_bloc/tree/develop/e_commerce',
                      listTechnologies: [
                        'Flutter (Bloc)',
                        'Isar database',
                        'Animation',
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  _HoverContainer(
                    builder: (isHover) => ElevatedButton(
                      onPressed: () async => await launchUrl(
                          Uri.parse('https://github.com/dinhtai98'),
                          mode: LaunchMode.inAppWebView),
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                            side: BorderSide(color: ColorUtils.blue),
                          ),
                        ),
                        minimumSize:
                            MaterialStateProperty.all<Size>(Size(20.sp, 15.sp)),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            isHover ? ColorUtils.blue : ColorUtils.transparent),
                        overlayColor: MaterialStateProperty.resolveWith<Color?>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.hovered)) {
                              return ColorUtils.transparent;
                            }
                            return null;
                          },
                        ),
                      ),
                      child: Text(
                        'Github Link',
                        style: TextStyleUtils.regular(6.5.sp)
                            .copyWith(color: ColorUtils.transparent07),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    } else {
      return Container(
        height: 1000.sp,
        color: ColorUtils.black,
        padding: EdgeInsets.fromLTRB(15.w, 10.sp, 10.sp, 15.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'MY PROJECTS DEMO',
                    style: TextStyleUtils.regular(14.sp)
                        .copyWith(color: ColorUtils.transparent07),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Work that I've done for past 2,5 years",
                    style: TextStyleUtils.bold(16.sp)
                        .copyWith(color: ColorUtils.white),
                  ),
                  const SizedBox(height: 10),
                  const CustomAnimatedBuilder(
                    child: _BuildDescriptionProject(
                      image: 'assets/images/sale-app-v1.png',
                      description: 'Sales App',
                      linkGitHubProject:
                          'https://github.com/dinhtai98/ecommerce/tree/develop/ecommerce',
                      listTechnologies: [
                        'Flutter (Provider)',
                        'Hive database',
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  const CustomAnimatedBuilder(
                    child: _BuildDescriptionProject(
                      image: 'assets/images/sale-app.png',
                      description: 'Sales App v2',
                      linkGitHubProject:
                          'https://github.com/dinhtai98/E_commerce_bloc/tree/develop/e_commerce',
                      listTechnologies: [
                        'Flutter (Bloc)',
                        'Isar database',
                        'Animation',
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  _HoverContainer(
                    builder: (isHover) => ElevatedButton(
                      onPressed: () async => await launchUrl(
                          Uri.parse('https://github.com/dinhtai98'),
                          mode: LaunchMode.inAppWebView),
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                            side: BorderSide(color: ColorUtils.blue),
                          ),
                        ),
                        minimumSize:
                            MaterialStateProperty.all<Size>(Size(30.sp, 35.sp)),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            isHover ? ColorUtils.blue : ColorUtils.transparent),
                        overlayColor: MaterialStateProperty.resolveWith<Color?>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.hovered)) {
                              return ColorUtils.transparent;
                            }
                            return null;
                          },
                        ),
                      ),
                      child: Text(
                        'Github Link',
                        style: TextStyleUtils.regular(12.sp)
                            .copyWith(color: ColorUtils.transparent07),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }
  }
}

class _BuildDescriptionProject extends StatelessWidget {
  final String image;
  final String description;
  final String linkGitHubProject;
  final List<String> listTechnologies;
  const _BuildDescriptionProject({
    Key? key,
    required this.image,
    required this.description,
    required this.linkGitHubProject,
    required this.listTechnologies,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var isMobile = locator<GlobalData>().isMobileSize;
    return _HoverContainer(builder: (_) {
      return Container(
        color: ColorUtils.darkBlue,
        height: isMobile ? 400.sp : 170.sp,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Center(
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (isMobile)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'My responsibilities:',
                              style: TextStyleUtils.regular(14.sp)
                                  .copyWith(color: ColorUtils.white),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ...<String>[
                                  'Analysis and design',
                                  'Development',
                                  'Review code',
                                  'Optimize code',
                                  'Bug Fixing'
                                ].map(
                                  (e) => Text(
                                    '• $e',
                                    style: TextStyleUtils.regular(12.sp)
                                        .copyWith(
                                            color: ColorUtils.transparent07),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Technologies used:',
                              style: TextStyleUtils.regular(14.sp)
                                  .copyWith(color: ColorUtils.white),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 2.sp, horizontal: 4.sp),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ...listTechnologies.map(
                                    (e) => Text(
                                      '• $e',
                                      style: TextStyleUtils.regular(12.sp)
                                          .copyWith(
                                              color: ColorUtils.transparent07),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  else
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'My responsibilities:',
                              style: TextStyleUtils.regular(7.sp)
                                  .copyWith(color: ColorUtils.white),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 2.sp, horizontal: 4.sp),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ...<String>[
                                    'Analysis and design',
                                    'Development',
                                    'Review code',
                                    'Optimize code',
                                    'Bug Fixing'
                                  ].map(
                                    (e) => Text(
                                      '• $e',
                                      style: TextStyleUtils.regular(6.sp)
                                          .copyWith(
                                              color: ColorUtils.transparent07),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Technologies used:',
                              style: TextStyleUtils.regular(7.sp)
                                  .copyWith(color: ColorUtils.white),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 2.sp, horizontal: 4.sp),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ...listTechnologies.map(
                                    (e) => Text(
                                      '• $e',
                                      style: TextStyleUtils.regular(6.sp)
                                          .copyWith(
                                              color: ColorUtils.transparent07),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Description: ',
                        style: TextStyleUtils.regular(isMobile ? 14.sp : 7.sp)
                            .copyWith(color: ColorUtils.white),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 2.sp),
                        child: Text(
                          description,
                          style: TextStyleUtils.regular(isMobile ? 12.sp : 6.sp)
                              .copyWith(color: ColorUtils.transparent07),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () async => await launchUrl(
                            Uri.parse(linkGitHubProject),
                            mode: LaunchMode.inAppWebView),
                        child: Text(
                          'Source',
                          style: TextStyleUtils.regular(isMobile ? 12.sp : 6.sp)
                              .copyWith(
                            color: ColorUtils.blue,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      SizedBox(width: 10.sp),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      );
    });
  }
}

class _HoverContainer extends StatefulWidget {
  final Widget Function(bool isHovered) builder;
  const _HoverContainer({required this.builder});

  @override
  State<_HoverContainer> createState() => __HoverContainerState();
}

class __HoverContainerState extends State<_HoverContainer> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    final hovered = Matrix4.identity()..scale(1.02);
    final transform = isHovered ? hovered : Matrix4.identity();
    return MouseRegion(
      onEnter: (event) => onEntered(true),
      onExit: (event) => onEntered(false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        transform: transform,
        child: widget.builder(isHovered),
      ),
    );
  }

  void onEntered(bool isHovered) {
    setState(() {
      this.isHovered = isHovered;
    });
  }
}
