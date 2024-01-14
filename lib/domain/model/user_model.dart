import 'package:json_annotation/json_annotation.dart';
part 'user_model.g.dart';

@JsonSerializable()
class UserManagementModel {
  String name;
  String email;

  UserManagementModel(this.name, this.email);

  factory UserManagementModel.fromJson(Map<String, dynamic> json) =>
      _$UserManagementModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserManagementModelToJson(this);
}