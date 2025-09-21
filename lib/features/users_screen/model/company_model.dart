import 'package:json_annotation/json_annotation.dart';

part "company_model.g.dart";

@JsonSerializable()
class CompanyModel {
  CompanyModel({
    required this.name,
    required this.catchPhrase,
    required this.bs,
  });

  final String name;
  final String catchPhrase;
  final String bs;

  factory CompanyModel.fromJson(Map<String, dynamic> json) =>
      _$CompanyModelFromJson(json);

  Map<String, dynamic> toJson() => _$CompanyModelToJson(this);
}
