import 'package:flutter/material.dart';
import 'package:portfolio_website/core/utils/color_utils.dart';
import 'package:portfolio_website/core/utils/constant.dart';
import 'package:portfolio_website/core/utils/custom_animation_builder.dart';
import 'package:portfolio_website/core/utils/responsive.dart';
import 'package:portfolio_website/core/utils/text_style_utils.dart';
import 'package:url_launcher/url_launcher.dart';

class MyProjectsPage extends StatelessWidget {
  const MyProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // debugPrint('Build SkillSetPage');
    return Container(
      color: ColorUtils.black,
      child: Responsive(
        mobile: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'MY DEMO PROJECTS',
                    style: TextStyleUtils.regular(Constants.subheaderSize)
                        .copyWith(color: ColorUtils.transparent07),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Work that I've done for past 2.5 years",
                    style: TextStyleUtils.bold(Constants.subheaderSize)
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
              const SizedBox(height: 20),
              Column(
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
                            MaterialStateProperty.all<Size>(const Size(30, 35)),
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
                        style: TextStyleUtils.regular(Constants.descriptionSize)
                            .copyWith(color: ColorUtils.transparent07),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        tablet: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'MY DEMO PROJECTS',
                    style: TextStyleUtils.regular(Constants.headerSize)
                        .copyWith(color: ColorUtils.transparent07),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Work that I've done for past 2.5 years",
                    style: TextStyleUtils.bold(Constants.headerSize)
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
              const SizedBox(height: 20),
              Column(
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
                            MaterialStateProperty.all<Size>(const Size(30, 45)),
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
                        style: TextStyleUtils.regular(Constants.subheaderSize)
                            .copyWith(color: ColorUtils.transparent07),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        desktop: Container(
          height: 900,
          color: ColorUtils.black,
          padding: const EdgeInsets.fromLTRB(50, 10, 10, 50),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'MY DEMO PROJECTS',
                      style: TextStyleUtils.regular(Constants.headerSize)
                          .copyWith(color: ColorUtils.transparent07),
                    ),
                    Text(
                      "Work that I've done for past 2.5 years",
                      style: TextStyleUtils.bold(Constants.subheaderSize)
                          .copyWith(color: ColorUtils.white),
                    ),
                    const SizedBox(height: 50),
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
              const SizedBox(width: 20),
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
                          minimumSize: MaterialStateProperty.all<Size>(
                              const Size(100, 70)),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              isHover
                                  ? ColorUtils.blue
                                  : ColorUtils.transparent),
                          overlayColor:
                              MaterialStateProperty.resolveWith<Color?>(
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
                          style: TextStyleUtils.regular(Constants.subheaderSize)
                              .copyWith(color: ColorUtils.transparent07),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
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
    List infoOfProject = [
      Text(
        'My responsibilities:',
        style: TextStyleUtils.regular(Constants.subheaderSize)
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
              style: TextStyleUtils.regular(Constants.descriptionSize)
                  .copyWith(color: ColorUtils.transparent07),
            ),
          ),
        ],
      ),
    ];
    return _HoverContainer(builder: (_) {
      return Container(
        color: ColorUtils.darkBlue,
        height: 650,
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
              child: Responsive(
                mobile: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [...infoOfProject],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Technologies used:',
                              style: TextStyleUtils.regular(
                                      Constants.subheaderSize)
                                  .copyWith(color: ColorUtils.white),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 2, horizontal: 4),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ...listTechnologies.map(
                                    (e) => Text(
                                      '• $e',
                                      style: TextStyleUtils.regular(
                                              Constants.descriptionSize)
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
                          style: TextStyleUtils.regular(Constants.subheaderSize)
                              .copyWith(color: ColorUtils.white),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 2),
                          child: Text(
                            description,
                            style: TextStyleUtils.regular(
                                    Constants.descriptionSize)
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
                            style:
                                TextStyleUtils.regular(Constants.subheaderSize)
                                    .copyWith(
                              color: ColorUtils.blue,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ],
                ),
                tablet: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [...infoOfProject],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Technologies used:',
                              style: TextStyleUtils.regular(
                                      Constants.subheaderSize)
                                  .copyWith(color: ColorUtils.white),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 2, horizontal: 4),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ...listTechnologies.map(
                                    (e) => Text(
                                      '• $e',
                                      style: TextStyleUtils.regular(
                                              Constants.descriptionSize)
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
                    Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Description: ',
                            style:
                                TextStyleUtils.regular(Constants.subheaderSize)
                                    .copyWith(color: ColorUtils.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 2),
                            child: Text(
                              description,
                              style: TextStyleUtils.regular(
                                      Constants.descriptionSize)
                                  .copyWith(color: ColorUtils.transparent07),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: InkWell(
                        onTap: () async => await launchUrl(
                            Uri.parse(linkGitHubProject),
                            mode: LaunchMode.inAppWebView),
                        child: Text(
                          'Source',
                          style: TextStyleUtils.regular(Constants.subheaderSize)
                              .copyWith(
                            color: ColorUtils.blue,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                desktop: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [...infoOfProject],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Technologies used:',
                              style: TextStyleUtils.regular(
                                      Constants.subheaderSize)
                                  .copyWith(color: ColorUtils.white),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 2, horizontal: 4),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ...listTechnologies.map(
                                    (e) => Text(
                                      '• $e',
                                      style: TextStyleUtils.regular(
                                              Constants.descriptionSize)
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
                    Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Description: ',
                            style:
                                TextStyleUtils.regular(Constants.subheaderSize)
                                    .copyWith(color: ColorUtils.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 2),
                            child: Text(
                              description,
                              style: TextStyleUtils.regular(
                                      Constants.descriptionSize)
                                  .copyWith(color: ColorUtils.transparent07),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: InkWell(
                        onTap: () async => await launchUrl(
                            Uri.parse(linkGitHubProject),
                            mode: LaunchMode.inAppWebView),
                        child: Text(
                          'Source',
                          style: TextStyleUtils.regular(Constants.subheaderSize)
                              .copyWith(
                            color: ColorUtils.blue,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
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
