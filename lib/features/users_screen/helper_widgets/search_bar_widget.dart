import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:user_details_app/core/common/widgets/common_text_field.dart';
import 'package:flutter/material.dart';
import 'package:user_details_app/core/constants/color_constants.dart';
import 'package:user_details_app/features/users_screen/controller/users_screen_controller.dart';

class SearchBarWidget extends StatelessWidget {
  SearchBarWidget({super.key});

  final controller = Get.find<UsersScreenController>();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(7.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: searchBarColor,
      ),
      child: CommonTextField(
        onChanged: (value) => controller.onChangedSearchBar(value),
        hintText: "Search users...",
        prefixIcon: Icon(Icons.search, color: secondaryFontColor, size: 25.h),
      ),
    );
  }
}
