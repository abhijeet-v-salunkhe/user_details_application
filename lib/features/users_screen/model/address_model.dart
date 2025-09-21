import 'package:json_annotation/json_annotation.dart';
import 'package:user_details_app/features/users_screen/model/geo_model.dart';

part 'address_model.g.dart';

@JsonSerializable()
class AddressModel {
  AddressModel({
    required this.street,
    required this.suite,
    required this.city,
    required this.zipCode,
    required this.geo,
  });

  final String street;
  final String suite;
  final String city;
  @JsonKey(name: "zipcode")
  final String zipCode;
  final GeoModel geo;

  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);
  Map<String, dynamic> toJson() => _$AddressModelToJson(this);
}
