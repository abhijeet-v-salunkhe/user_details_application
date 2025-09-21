import 'package:flutter/material.dart';
import 'package:user_details_app/core/common/font/font_family.dart';
import 'package:user_details_app/core/constants/color_constants.dart';

class CustomTextStyle {
  static get textTheme => ThemeData.light().textTheme;

  static TextStyle bold({required double fontSize, Color? color}) {
    return textTheme.bodyMedium!.copyWith(
      fontFamily: boldFontFamily,
      color: color ?? primaryFontColor,
      fontSize: fontSize,
    );
  }

  static TextStyle medium({required double fontSize, Color? color}) {
    return textTheme.bodyMedium!.copyWith(
      fontFamily: mediumFontFamily,
      color: color ?? primaryFontColor,
      fontSize: fontSize,
    );
  }

  static TextStyle regular({required double fontSize, Color? color}) {
    return textTheme.bodyMedium!.copyWith(
      fontFamily: regularFontFamily,
      color: color ?? primaryFontColor,
      fontSize: fontSize,
    );
  }

  static TextStyle semiBold({required double fontSize, Color? color}) {
    return textTheme.bodyMedium!.copyWith(
      fontFamily: semiBoldFontFamily,
      color: color ?? primaryFontColor,
      fontSize: fontSize,
    );
  }
}
