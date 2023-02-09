import 'package:flutter/material.dart';

class ColorUtils {
  static Color fromString(String colorString) {
    // ignore: unnecessary_null_comparison
    if (colorString == null) {
      return const Color(0xffF2F2F2);
    }

    try {
      // rgbo(247, 247, 247, 0.73)
      if (colorString.substring(0, 4) == 'rgbo') {
        String tempString = colorString;
        tempString = tempString.substring(4);
        tempString = tempString.replaceAll('(', '');
        tempString = tempString.replaceAll(')', '');
        List<String> rgboValueList = tempString.split(',');
        rgboValueList = rgboValueList.map((e) => e.trim()).toList();

        if (rgboValueList.length != 4) {
          throw Exception('Invalid string color');
        }

        try {
          int red = int.parse(rgboValueList[0]);
          int green = int.parse(rgboValueList[1]);
          int blue = int.parse(rgboValueList[2]);
          double alpha = double.parse(rgboValueList[3]);
          return Color.fromRGBO(red, green, blue, alpha);
        } catch (e) {
          rethrow;
        }
      }

      // #f3e2d0
      final buffer = StringBuffer();
      if (colorString.length == 6 || colorString.length == 7) {
        buffer.write('ff');
      }
      buffer.write(colorString.replaceFirst('#', ''));
      return Color(int.parse(buffer.toString(), radix: 16));
    } catch (e) {
      return const Color(0xffF2F2F2);
    }
  }

  // static bool lightMode =
  //     MediaQuery.of(Get.context!).platformBrightness == Brightness.light;
  static Color transparent = Colors.transparent;
  static Color white = const Color(0xFFFFFFFF);
  static Color black = const Color.fromARGB(255, 0, 0, 0);
  static Color blue = const Color.fromARGB(255, 25, 0, 255);
  static Color lightBlue = const Color(0xFF609BFF);
  static Color lightBe = const Color(0xFFFFF3E4);
  static Color green = const Color.fromARGB(255, 43, 255, 0);
  static Color darkBlue = const Color(0xFF181823);
  static Color transparent07 = const Color.fromRGBO(255, 255, 255, 0.7);
  // static Color background =
  //     lightMode ? const Color(0xFFFFFFFF) : const Color(0xff042a49);
  static Color lightBackground = const Color(0xFFFFFFFF);
  static Color darkBackground = const Color(0xff042a49);
}
