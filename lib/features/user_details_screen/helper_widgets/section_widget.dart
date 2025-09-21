import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:user_details_app/core/common/font/custom_text_style.dart';

class SectionWidget extends StatelessWidget {
  const SectionWidget({
    super.key,
    required this.listOfInfoTile,
    required this.title,
  });

  final String title;
  final List<Widget> listOfInfoTile;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 5.h,
      children: [
        Text(title, style: CustomTextStyle.bold(fontSize: 15.sp)),
        Card(
          clipBehavior: Clip.hardEdge,
          child: Column(children: listOfInfoTile),
        ),
      ],
    );
  }
}
