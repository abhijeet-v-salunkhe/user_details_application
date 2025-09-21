import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:user_details_app/core/common/font/custom_text_style.dart';
import 'package:user_details_app/core/constants/color_constants.dart';

PreferredSizeWidget? commonAppBar({
  required String title,
  bool isCentered = true,
  PreferredSizeWidget? bottom,
}) {
  return AppBar(
    scrolledUnderElevation: 0,
    titleTextStyle: CustomTextStyle.bold(fontSize: 20.sp),
    backgroundColor: primaryBackgroundColor,
    title: Text(title),
    centerTitle: isCentered,
    bottom: bottom,
  );
}
