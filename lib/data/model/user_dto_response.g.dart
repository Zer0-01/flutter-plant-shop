// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserDtoResponse _$UserDtoResponseFromJson(Map<String, dynamic> json) =>
    UserDtoResponse(
      credit: json['credit'] as num,
      points: json['points'] as num,
      package: json['package'] as num,
    );

Map<String, dynamic> _$UserDtoResponseToJson(UserDtoResponse instance) =>
    <String, dynamic>{
      'credit': instance.credit,
      'points': instance.points,
      'package': instance.package,
    };
