import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio_website/core/utils/animation_ease.dart';
import 'package:portfolio_website/core/utils/color_utils.dart';
import 'package:portfolio_website/core/utils/text_style_utils.dart';

class SkillSetPage extends StatelessWidget {
  const SkillSetPage({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('Build SkillSetPage');
    return Container(
      height: 260.sp,
      color: ColorUtils.black,
      padding: EdgeInsets.fromLTRB(15.w, 10.sp, 10.sp, 15.w),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Skillset',
                  style: TextStyleUtils.bold(12.sp)
                      .copyWith(color: ColorUtils.white),
                ),
                SizedBox(height: 10.sp),
                Text(
                  'With skills in over 9 different fields of development, I am the perfect person to hire when it comes to a full fledged project. Whatever your needs are, I can pretty much take on any challenge.',
                  style: TextStyleUtils.regular(7.sp)
                      .copyWith(color: ColorUtils.transparent07),
                )
              ],
            ),
          ),
          Expanded(
              flex: 2,
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 1,
                  childAspectRatio: 2.2,
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
              ))
        ],
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
    return AnimationEase(
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
            size: 12.sp,
            color: ColorUtils.blue,
          ),
          Text(
            name,
            style: TextStyleUtils.bold(7.sp).copyWith(color: ColorUtils.white),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 4.sp,
              vertical: 2.sp,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...listDescription.map(
                  (e) => Text(
                    '• $e',
                    style: TextStyleUtils.bold(5.sp)
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
