import 'package:custom_pop_up_menu/custom_pop_up_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_website/core/blocs/bloc/size_bloc.dart';
import 'package:portfolio_website/core/utils/color_utils.dart';
import 'package:portfolio_website/core/utils/custom_button.dart';
import 'package:portfolio_website/core/utils/enum.dart';
import 'package:portfolio_website/core/utils/responsive.dart';
import 'package:portfolio_website/core/utils/text_style_utils.dart';
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

part 'ui/widgets/dropdown_widget.dart';

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
    context
        .read<SizeBloc>()
        .add(SizeChangedEvent(width: MediaQuery.of(context).size.width));
    return Scaffold(
      appBar: const _NavigationBar(),
      body: ScrollablePositionedList.builder(
        scrollDirection: Axis.vertical,
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

class _NavigationBar extends StatelessWidget implements PreferredSizeWidget {
  const _NavigationBar();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: ColorUtils.darkBlue,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/logo.png',
            fit: BoxFit.fill,
          ),
          const Expanded(flex: 2, child: SizedBox.shrink()),
          const Expanded(
            flex: 8,
            child: Align(
              alignment: Alignment.centerRight,
              child: Responsive(
                  mobile: _DropdownWidget(),
                  tablet: _DropdownWidget(),
                  desktop: _NavLink()),
            ),
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
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
              globalData.scrollTo(Pages.myDemoProjects);
            },
            name: 'Demo Project',
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
