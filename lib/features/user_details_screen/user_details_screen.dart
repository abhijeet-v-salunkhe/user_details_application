import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:user_details_app/core/common/widgets/common_app_bar.dart';
import 'package:user_details_app/core/constants/color_constants.dart';
import 'package:user_details_app/features/user_details_screen/helper_widgets/info_list_tile_widget.dart';
import 'package:user_details_app/features/user_details_screen/helper_widgets/section_widget.dart';
import 'package:user_details_app/features/users_screen/model/user_model.dart';

class UserDetailsScreen extends StatelessWidget {
  const UserDetailsScreen({super.key, required this.userDetails});

  final UserModel userDetails;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppBar(title: "User Details"),
      backgroundColor: secondaryBackgroundColor,
      body: Padding(
        padding: EdgeInsetsGeometry.all(10.h),
        child: SingleChildScrollView(
          child: Column(
            spacing: 10.h,
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey.shade100,
                radius: 80.r,
                child: Icon(
                  Icons.account_circle,
                  size: 100.h,
                  color: Colors.grey,
                ),
              ),
              SectionWidget(
                listOfInfoTile: [
                  InfoListTileWidget(title: "Name", value: userDetails.name),
                  Divider(height: 1),
                  InfoListTileWidget(
                    title: "Username",
                    value: userDetails.userName,
                  ),
                  Divider(height: 1),
                  InfoListTileWidget(
                    title: "Email",
                    value: userDetails.email,
                    isLink: true,
                  ),
                ],
                title: "Personal Information",
              ),
              SectionWidget(
                listOfInfoTile: [
                  InfoListTileWidget(
                    title: "Street",
                    value: userDetails.address.street,
                  ),
                  Divider(height: 1),
                  InfoListTileWidget(
                    title: "City",
                    value: userDetails.address.city,
                  ),
                  Divider(height: 1),
                  InfoListTileWidget(
                    title: "Zip code",
                    value: userDetails.address.zipCode,
                  ),
                ],
                title: "Address",
              ),
              SectionWidget(
                listOfInfoTile: [
                  InfoListTileWidget(title: "Phone", value: userDetails.phone),
                  Divider(height: 1),
                  InfoListTileWidget(
                    title: "Website",
                    value: userDetails.website,
                  ),
                ],
                title: "Contact",
              ),
              SectionWidget(
                listOfInfoTile: [
                  InfoListTileWidget(
                    title: "Name",
                    value: userDetails.company.name,
                  ),
                  Divider(height: 1),
                  InfoListTileWidget(
                    title: "Catchphrase",
                    value: userDetails.company.catchPhrase,
                  ),
                  Divider(height: 1),
                  InfoListTileWidget(
                    title: "Business Slogan",
                    value: userDetails.company.bs,
                  ),
                ],
                title: "Company",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
