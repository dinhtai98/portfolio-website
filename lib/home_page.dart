import 'package:flutter/material.dart';
import 'package:portfolio_website/ui/experience_page.dart';
import 'package:portfolio_website/ui/footer.dart';
import 'package:portfolio_website/ui/my_projects_page.dart';
import 'package:portfolio_website/ui/philosophy_values_page.dart';
import 'package:portfolio_website/ui/skillset_page.dart';
import 'package:portfolio_website/ui/testimonial_section.dart';
import 'package:portfolio_website/ui/wrapper_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          WrapperPage(),
          ExperiencePage(),
          PhilosophyAndValuesPage(),
          SkillSetPage(),
          MyProjectsPage(),
          TestimonialSectionPage(),
          Footer(),
        ],
      ),
    );
  }
}
