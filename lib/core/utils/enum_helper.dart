part of 'enum.dart';

class EnumHelper {
  static int? getValue<T>(Map<T, MyEnum> enumMap, T myEnum) {
    if (myEnum == null) {
      return -2;
    }

    return enumMap[myEnum]?.value;
  }

  static String? getDescription<T>(Map<T, MyEnum> enumMap, T myEnum) {
    if (myEnum == null) {
      return '';
    }

    return enumMap[myEnum]?.description;
  }

  static T getEnum<T>(Map<T, MyEnum> enumMap, int value) {
    return enumMap.keys.firstWhere((key) => enumMap[key]!.value == value);
  }

  static T getEnumFromDescription<T>(
      Map<T, MyEnum> enumMap, String description) {
    return enumMap.keys
        .firstWhere((key) => enumMap[key]!.description == description);
  }
}

class MyEnum {
  int? value;
  String? description;

  MyEnum({this.value, this.description});
}

class EnumMap {
  static Map<Pages, MyEnum> enumPages = {
    Pages.info: MyEnum(description: 'Info'),
    Pages.aboutMe: MyEnum(description: 'About Me'),
    Pages.myDemoProjects: MyEnum(description: 'My Demo Projects'),
    Pages.philosophyAndValues: MyEnum(description: 'Philosophy And Values'),
    Pages.skillset: MyEnum(description: 'Skillset'),
    Pages.testimonialSection: MyEnum(description: 'Testimonial Section'),
    Pages.workExperience: MyEnum(description: 'Work Experience'),
    Pages.footer: MyEnum(description: 'Footer'),
  };
}
