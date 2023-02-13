import 'package:flutter/material.dart';

class TextStyleUtils {
  // static TextStyle thin(double size) => TextStyle(
  //       fontWeight: FontWeight.w100,
  //       fontSize: size ,
  //     );
  // static TextStyle light(double size) => TextStyle(
  //       fontWeight: FontWeight.w300,
  //       fontSize: size ,
  //     );

  static TextStyle regular(double size) => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: size,
        fontFamily: 'Sen',
      );
  // static TextStyle medium(double size) => TextStyle(
  //       fontWeight: FontWeight.w500,
  //       fontSize: size ,
  //     );

  static TextStyle bold(double size) => TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: size,
        fontFamily: 'Sen',
      );

  static TextStyle extraBold(double size) => TextStyle(
        fontWeight: FontWeight.w800,
        fontSize: size,
        fontFamily: 'Sen',
      );
}
