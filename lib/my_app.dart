import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:user_details_app/core/app_routes.dart';
import 'package:user_details_app/core/common/font/custom_text_style.dart';
import 'package:user_details_app/features/users_screen/users_screen.dart';

final GlobalKey<ScaffoldMessengerState> scaffoldKey =
    GlobalKey<ScaffoldMessengerState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    bool isTablet = false;
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          isTablet = true;
        }
        return ScreenUtilInit(
          designSize: isTablet ? Size(800, 1280) : Size(360, 690),
          builder: (context, child) => GetMaterialApp(
            getPages: AppRoutes.getPages(),
            debugShowCheckedModeBanner: false,
            scaffoldMessengerKey: scaffoldKey,
            home: UsersScreen(),
          ),
        );
      },
    );
  }
}
