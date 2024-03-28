// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'child.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChildImpl _$$ChildImplFromJson(Map<String, dynamic> json) => _$ChildImpl(
      id: json['id'] as int? ?? defaultZero,
      name: json['name'] as String? ?? emptyString,
      age: json['age'] as int? ?? defaultZero,
      gender: json['gender'] as String? ?? emptyString,
      birthdate: json['birthdate'] as String? ?? emptyString,
      birthRegistered: json['birthRegistered'] as String? ?? emptyString,
      zone: json['zone'] as String? ?? emptyString,
      mothersName: json['mothersName'] as String? ?? emptyString,
      fathersName: json['fathersName'] as String? ?? emptyString,
    );

Map<String, dynamic> _$$ChildImplToJson(_$ChildImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'age': instance.age,
      'gender': instance.gender,
      'birthdate': instance.birthdate,
      'birthRegistered': instance.birthRegistered,
      'zone': instance.zone,
      'mothersName': instance.mothersName,
      'fathersName': instance.fathersName,
    };
