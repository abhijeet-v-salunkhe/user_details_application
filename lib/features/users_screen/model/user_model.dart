import "package:json_annotation/json_annotation.dart";
import "package:user_details_app/features/users_screen/model/address_model.dart";
import "package:user_details_app/features/users_screen/model/company_model.dart";
part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  const UserModel({
    required this.id,
    required this.name,
    required this.userName,
    required this.email,
    required this.phone,
    required this.website,
    required this.company,
    required this.address,
  });

  final int id;
  final String name;

  @JsonKey(name: "username")
  final String userName;

  final String email;
  final String phone;
  final String website;

  final CompanyModel company;
  final AddressModel address;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
