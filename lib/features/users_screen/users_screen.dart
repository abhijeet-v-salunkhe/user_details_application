import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:user_details_app/core/app_routes.dart';
import 'package:user_details_app/core/common/font/custom_text_style.dart';
import 'package:user_details_app/core/common/widgets/common_app_bar.dart';
import 'package:user_details_app/core/constants/color_constants.dart';
import 'package:user_details_app/features/user_details_screen/user_details_screen.dart';
import 'package:user_details_app/features/users_screen/controller/users_screen_controller.dart';
import 'package:user_details_app/features/users_screen/helper_widgets/search_bar_widget.dart';
import 'package:user_details_app/features/users_screen/helper_widgets/user_list_shimmer_effect_widget.dart';
import 'package:user_details_app/features/users_screen/helper_widgets/user_list_tile_widget.dart';

class UsersScreen extends StatelessWidget {
  const UsersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: UsersScreenController(),
      builder: (controller) => Scaffold(
        appBar: commonAppBar(
          title: "Users",
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(60.h),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SearchBarWidget(),
            ),
          ),
        ),
        backgroundColor: secondaryBackgroundColor,
        body: controller.isLoading
            ? Padding(
                padding: EdgeInsetsGeometry.all(10.h),
                child: UserListShimmerEffectWidget(),
              )
            : controller.listOfUsers.isNotEmpty
            ? RefreshIndicator(
                onRefresh: () => controller.getUsers(),
                child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(height: 7.h),
                  padding: EdgeInsetsGeometry.all(10.h),
                  itemCount: controller.listOfUsers.length,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () => Get.to(
                      UserDetailsScreen(
                        userDetails: controller.listOfUsers[index],
                      ),
                    ),
                    child: UserListTileWidget(
                      title: controller.listOfUsers[index].name,
                      subTitle: controller.listOfUsers[index].email,
                    ),
                  ),
                ),
              )
            : RefreshIndicator(
                onRefresh: () => controller.getUsers(),
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  child: SizedBox(
                    height: 500.h,
                    width: double.infinity,
                    child: Center(
                      child: Text(
                        "No users found",
                        style: CustomTextStyle.medium(
                          fontSize: 20.sp,
                          color: secondaryFontColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
      ),
    );
  }
}
