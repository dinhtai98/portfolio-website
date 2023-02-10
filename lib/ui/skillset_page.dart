import 'package:flutter/material.dart';
import 'package:portfolio_website/core/utils/constant.dart';
import 'package:portfolio_website/core/utils/custom_slide_transition.dart';
import 'package:portfolio_website/core/utils/color_utils.dart';
import 'package:portfolio_website/core/utils/responsive.dart';
import 'package:portfolio_website/core/utils/text_style_utils.dart';

class SkillSetPage extends StatelessWidget {
  const SkillSetPage({super.key});

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
                    'Skillset',
                    style: TextStyleUtils.bold(Constants.headerSize)
                        .copyWith(color: ColorUtils.white),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'With skills in over 9 different fields of development, I am the perfect person to hire when it comes to a full fledged project. Whatever your needs are, I can pretty much take on any challenge.',
                    style: TextStyleUtils.regular(Constants.descriptionSize)
                        .copyWith(color: ColorUtils.transparent07),
                  )
                ],
              ),
              const SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  _BuildSkillInfo(
                    icon: Icons.code,
                    name: 'Coding languages',
                    listDescription: ['Flutter', 'C#', 'Java'],
                    delay: Duration(milliseconds: 300),
                  ),
                  _BuildSkillInfo(
                    icon: Icons.storage,
                    name: 'Database knowledge',
                    listDescription: ['SQLite', 'NoSQL (Hive, Isar)'],
                    delay: Duration(milliseconds: 400),
                  ),
                  _BuildSkillInfo(
                    icon: Icons.memory_sharp,
                    name: 'Data structures and algorithms',
                    listDescription: ['MVVM', 'MVC', 'OOP'],
                    delay: Duration(milliseconds: 300),
                  ),
                  _BuildSkillInfo(
                    icon: Icons.source_outlined,
                    name: 'Source control',
                    listDescription: ['Git', 'GitHub', 'Jira', 'Bitbucket'],
                    delay: Duration(milliseconds: 400),
                  ),
                  _BuildSkillInfo(
                    icon: Icons.mode,
                    name: 'Debugging knowledge',
                    listDescription: [],
                    delay: Duration(milliseconds: 300),
                  ),
                  _BuildSkillInfo(
                    icon: Icons.settings_system_daydream_rounded,
                    name: 'Operating systems',
                    listDescription: [
                      'Windows',
                      'Mobile (Android/IOS)',
                      'Web',
                      'Bitbucket'
                    ],
                    delay: Duration(milliseconds: 400),
                  ),
                  _BuildSkillInfo(
                    icon: Icons.aspect_ratio,
                    name: 'Software frameworks',
                    listDescription: ['.Net frameworks', 'Flutter'],
                    delay: Duration(milliseconds: 300),
                  ),
                  _BuildSkillInfo(
                    icon: Icons.border_color,
                    name: 'Text editing software',
                    listDescription: [
                      'Visual Studio',
                      'Visual Studio Code',
                    ],
                    delay: Duration(milliseconds: 400),
                  ),
                  _BuildSkillInfo(
                    icon: Icons.people,
                    name: 'Good and effective communication',
                    listDescription: [],
                    delay: Duration(milliseconds: 400),
                  ),
                ],
              )
            ],
          ),
        ),
        tablet: Padding(
          padding: const EdgeInsets.all(30),
          child: Container(
            height: 1300,
            color: ColorUtils.black,
            padding: const EdgeInsets.fromLTRB(25, 10, 10, 25),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Skillset',
                        style: TextStyleUtils.bold(Constants.headerSize)
                            .copyWith(color: ColorUtils.white),
                      ),
                      const SizedBox(height: 50),
                      Text(
                        'With skills in over 9 different fields of development, I am the perfect person to hire when it comes to a full fledged project. Whatever your needs are, I can pretty much take on any challenge.',
                        style: TextStyleUtils.regular(Constants.subheaderSize)
                            .copyWith(color: ColorUtils.transparent07),
                      )
                    ],
                  ),
                ),
                Expanded(
                    flex: 2,
                    child: GridView(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 1,
                        childAspectRatio: 1.3,
                      ),
                      physics: const NeverScrollableScrollPhysics(),
                      children: const [
                        _BuildSkillInfo(
                          icon: Icons.code,
                          name: 'Coding languages',
                          listDescription: ['Flutter', 'C#', 'Java'],
                          delay: Duration(milliseconds: 300),
                        ),
                        _BuildSkillInfo(
                          icon: Icons.storage,
                          name: 'Database knowledge',
                          listDescription: ['SQLite', 'NoSQL (Hive, Isar)'],
                          delay: Duration(milliseconds: 400),
                        ),
                        _BuildSkillInfo(
                          icon: Icons.memory_sharp,
                          name: 'Data structures and algorithms',
                          listDescription: ['MVVM', 'MVC', 'OOP'],
                          delay: Duration(milliseconds: 300),
                        ),
                        _BuildSkillInfo(
                          icon: Icons.source_outlined,
                          name: 'Source control',
                          listDescription: [
                            'Git',
                            'GitHub',
                            'Jira',
                            'Bitbucket'
                          ],
                          delay: Duration(milliseconds: 400),
                        ),
                        _BuildSkillInfo(
                          icon: Icons.mode,
                          name: 'Debugging knowledge',
                          listDescription: [],
                          delay: Duration(milliseconds: 300),
                        ),
                        _BuildSkillInfo(
                          icon: Icons.settings_system_daydream_rounded,
                          name: 'Operating systems',
                          listDescription: [
                            'Windows',
                            'Mobile (Android/IOS)',
                            'Web',
                          ],
                          delay: Duration(milliseconds: 400),
                        ),
                        _BuildSkillInfo(
                          icon: Icons.aspect_ratio,
                          name: 'Software frameworks',
                          listDescription: ['.Net frameworks', 'Flutter'],
                          delay: Duration(milliseconds: 300),
                        ),
                        _BuildSkillInfo(
                          icon: Icons.border_color,
                          name: 'Text editing software',
                          listDescription: [
                            'Visual Studio',
                            'Visual Studio Code',
                          ],
                          delay: Duration(milliseconds: 400),
                        ),
                        _BuildSkillInfo(
                          icon: Icons.people,
                          name: 'Good and effective communication',
                          listDescription: [],
                          delay: Duration(milliseconds: 400),
                        ),
                      ],
                    ))
              ],
            ),
          ),
        ),
        desktop: Padding(
          padding: const EdgeInsets.all(50),
          child: Container(
            height: 1100,
            color: ColorUtils.black,
            padding: const EdgeInsets.fromLTRB(25, 10, 10, 25),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Skillset',
                        style: TextStyleUtils.bold(Constants.headerSize)
                            .copyWith(color: ColorUtils.white),
                      ),
                      const SizedBox(height: 50),
                      Text(
                        'With skills in over 9 different fields of development, I am the perfect person to hire when it comes to a full fledged project. Whatever your needs are, I can pretty much take on any challenge.',
                        style: TextStyleUtils.regular(Constants.subheaderSize)
                            .copyWith(color: ColorUtils.transparent07),
                      )
                    ],
                  ),
                ),
                Expanded(
                    flex: 2,
                    child: GridView(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 1,
                        childAspectRatio: 1.9,
                      ),
                      physics: const NeverScrollableScrollPhysics(),
                      children: const [
                        _BuildSkillInfo(
                          icon: Icons.code,
                          name: 'Coding languages',
                          listDescription: ['Flutter', 'C#', 'Java'],
                          delay: Duration(milliseconds: 300),
                        ),
                        _BuildSkillInfo(
                          icon: Icons.storage,
                          name: 'Database knowledge',
                          listDescription: ['SQLite', 'NoSQL (Hive, Isar)'],
                          delay: Duration(milliseconds: 400),
                        ),
                        _BuildSkillInfo(
                          icon: Icons.memory_sharp,
                          name: 'Data structures and algorithms',
                          listDescription: ['MVVM', 'MVC', 'OOP'],
                          delay: Duration(milliseconds: 300),
                        ),
                        _BuildSkillInfo(
                          icon: Icons.source_outlined,
                          name: 'Source control',
                          listDescription: [
                            'Git',
                            'GitHub',
                            'Jira',
                            'Bitbucket'
                          ],
                          delay: Duration(milliseconds: 400),
                        ),
                        _BuildSkillInfo(
                          icon: Icons.mode,
                          name: 'Debugging knowledge',
                          listDescription: [],
                          delay: Duration(milliseconds: 300),
                        ),
                        _BuildSkillInfo(
                          icon: Icons.settings_system_daydream_rounded,
                          name: 'Operating systems',
                          listDescription: [
                            'Windows',
                            'Mobile (Android/IOS)',
                            'Web',
                          ],
                          delay: Duration(milliseconds: 400),
                        ),
                        _BuildSkillInfo(
                          icon: Icons.aspect_ratio,
                          name: 'Software frameworks',
                          listDescription: ['.Net frameworks', 'Flutter'],
                          delay: Duration(milliseconds: 300),
                        ),
                        _BuildSkillInfo(
                          icon: Icons.border_color,
                          name: 'Text editing software',
                          listDescription: [
                            'Visual Studio',
                            'Visual Studio Code',
                          ],
                          delay: Duration(milliseconds: 400),
                        ),
                        _BuildSkillInfo(
                          icon: Icons.people,
                          name: 'Good and effective communication',
                          listDescription: [],
                          delay: Duration(milliseconds: 400),
                        ),
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _BuildSkillInfo extends StatelessWidget {
  final String name;
  final List<String> listDescription;
  final Duration delay;
  final IconData icon;
  const _BuildSkillInfo({
    Key? key,
    required this.name,
    required this.listDescription,
    required this.delay,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomSlideTransition(
      offset: Tween<Offset>(
        begin: const Offset(0.2, 0.0),
        end: const Offset(0.0, 0.0),
      ),
      animationDuration: const Duration(milliseconds: 500),
      curve: Curves.easeInQuad,
      delay: delay,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            size: Constants.iconSize,
            color: ColorUtils.blue,
          ),
          Text(
            name,
            style: TextStyleUtils.bold(Constants.subheaderSize)
                .copyWith(color: ColorUtils.white),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 8,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...listDescription.map(
                  (e) => Text(
                    '• $e',
                    style: TextStyleUtils.bold(Constants.descriptionSize)
                        .copyWith(color: ColorUtils.transparent07),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
