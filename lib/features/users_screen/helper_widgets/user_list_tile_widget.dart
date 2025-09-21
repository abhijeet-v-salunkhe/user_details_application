import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:user_details_app/core/common/font/custom_text_style.dart';
import 'package:user_details_app/core/constants/color_constants.dart';

class UserListTileWidget extends StatelessWidget {
  const UserListTileWidget({
    super.key,
    required this.title,
    required this.subTitle,
  });

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    List<Color> listOfColors = [
      Colors.blue,
      Colors.green,
      Colors.purple,
      Colors.red,
      Colors.orange,
      Colors.brown,
      Colors.pinkAccent,
    ];

    List<Color> listOfBackgroundColors = [
      Colors.blue.shade100,
      Colors.green.shade100,
      Colors.purple.shade100,
      Colors.red.shade100,
      Colors.orange.shade100,
      Colors.brown.shade100,
      Colors.pinkAccent.shade100,
    ];

    Random random = Random();
    int randomIndex = random.nextInt(listOfColors.length - 1);

    return Card(
      elevation: 0,
      color: primaryBackgroundColor,
      child: Padding(
        padding: EdgeInsetsGeometry.all(10.h),
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: listOfBackgroundColors[randomIndex],
            radius: 20.r,
            child: Text(
              title[0],
              style: CustomTextStyle.bold(
                fontSize: 20.sp,
                color: listOfColors[randomIndex],
              ),
            ),
          ),
          title: Text(title, style: CustomTextStyle.semiBold(fontSize: 15.sp)),
          subtitle: Text(
            subTitle,
            style: CustomTextStyle.medium(
              fontSize: 10.sp,
              color: secondaryFontColor,
            ),
          ),
        ),
      ),
    );
  }
}
