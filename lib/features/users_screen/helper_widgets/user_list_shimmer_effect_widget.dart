import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:user_details_app/core/common/widgets/shimmer_effect.dart';

class UserListShimmerEffectWidget extends StatelessWidget {
  const UserListShimmerEffectWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsetsGeometry.all(6.h),
        child: ShimmerEffect(containerHeight: 70.h, containerWidth: 1.w),
      ),
    );
  }
}
