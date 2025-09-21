import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:user_details_app/core/common/font/custom_text_style.dart';
import 'package:user_details_app/core/constants/color_constants.dart';

class CommonTextField extends StatelessWidget {
  const CommonTextField({
    super.key,
    this.hintText,
    this.icon,
    this.prefixIcon,
    this.controller,
    this.onChanged,
  });

  final String? hintText;
  final Widget? icon;
  final Widget? prefixIcon;
  final TextEditingController? controller;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      controller: controller,
      style: CustomTextStyle.medium(fontSize: 15.sp),
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: hintText,
        icon: icon,
        prefixIcon: prefixIcon,
      ),
    );
  }
}
