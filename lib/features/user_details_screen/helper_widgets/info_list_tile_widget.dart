import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:user_details_app/core/common/font/custom_text_style.dart';
import 'package:user_details_app/core/constants/color_constants.dart';

class InfoListTileWidget extends StatelessWidget {
  const InfoListTileWidget({
    super.key,
    required this.title,
    required this.value,
    this.isLink = false,
  });

  final String title;
  final String value;
  final bool isLink;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: primaryBackgroundColor,
      title: Text(
        title,
        style: CustomTextStyle.regular(
          fontSize: 10.sp,
          color: secondaryFontColor,
        ),
      ),
      subtitle: Text(
        value,
        style: CustomTextStyle.medium(
          fontSize: 12.sp,
          color: isLink ? linkColor : null,
        ),
      ),
    );
  }
}
