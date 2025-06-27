import 'package:json_annotation/json_annotation.dart';

part 'user_dto_response.g.dart';

@JsonSerializable()
class UserDtoResponse {
  final num credit;
  final num points;
  final num package;

  UserDtoResponse({
    required this.credit,
    required this.points,
    required this.package,
  });

  factory UserDtoResponse.fromJson(Map<String, dynamic> json) =>
      _$UserDtoResponseFromJson(json);
  Map<String, dynamic> toJson() => _$UserDtoResponseToJson(this);
}
