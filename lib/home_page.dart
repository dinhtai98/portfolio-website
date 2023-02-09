import 'package:flutter/material.dart';
import 'package:portfolio_website/core/utils/constant.dart';
import 'package:portfolio_website/core/utils/enum.dart';
import 'package:portfolio_website/global/global_data.dart';
import 'package:portfolio_website/global/locator.dart';
import 'package:portfolio_website/ui/experience_page.dart';
import 'package:portfolio_website/ui/footer.dart';
import 'package:portfolio_website/ui/my_projects_page.dart';
import 'package:portfolio_website/ui/philosophy_values_page.dart';
import 'package:portfolio_website/ui/skillset_page.dart';
import 'package:portfolio_website/ui/testimonial_section.dart';
import 'package:portfolio_website/ui/wrapper_page.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> pages = const [
    WrapperPage(),
    ExperiencePage(),
    PhilosophyAndValuesPage(),
    SkillSetPage(),
    MyProjectsPage(),
    TestimonialSectionPage(),
    Footer(),
  ];

  @override
  Widget build(BuildContext context) {
    // debugPrint('Build HomePage');
    var globalData = locator<GlobalData>();
    globalData.isMobileSize =
        MediaQuery.of(context).size.width <= Constants.mobileWidthScale;
    return Scaffold(
      body: ScrollablePositionedList.builder(
        itemScrollController: globalData.scrollController,
        itemCount: pages.length,
        itemBuilder: (context, index) {
          return pages[index];
        },
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            globalData.scrollTo(Pages.info);
          },
          child: const Icon(Icons.arrow_upward)),
    );
  }
}
