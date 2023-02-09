import 'package:portfolio_website/core/utils/enum.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class GlobalData {
  GlobalData();
  bool isMobileSize = false;
  ItemScrollController scrollController = ItemScrollController();

  void scrollTo(Pages pages) {
    switch (pages) {
      case Pages.info:
        scrollController.scrollTo(
            index: 0, duration: const Duration(seconds: 1));
        break;
      case Pages.workExperience:
        scrollController.scrollTo(
            index: 1, duration: const Duration(milliseconds: 500));
        break;
      case Pages.skillset:
        scrollController.scrollTo(
            index: 3, duration: const Duration(seconds: 1));
        break;
      case Pages.myProjectsDemo:
        scrollController.scrollTo(
            index: 4, duration: const Duration(seconds: 1));
        break;
      case Pages.aboutMe:
        scrollController.scrollTo(
            index: 5, duration: const Duration(seconds: 1));
        break;
      default:
        scrollController.scrollTo(
            index: 0, duration: const Duration(seconds: 1));
        break;
    }
  }
}
