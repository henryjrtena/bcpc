// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survival.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SurvivalImpl _$$SurvivalImplFromJson(Map<String, dynamic> json) =>
    _$SurvivalImpl(
      id: json['id'] as int? ?? defaultZero,
      fic: json['fic'] as int? ?? defaultZero,
      vitA: json['vitA'] as int? ?? defaultZero,
      measles: json['measles'] as int? ?? defaultZero,
      defaulter: json['defaulter'] as int? ?? defaultZero,
      covid: json['covid'] as int? ?? defaultZero,
      height: (json['height'] as num?)?.toDouble() ?? defaultZeroDouble,
      weight: (json['weight'] as num?)?.toDouble() ?? defaultZeroDouble,
      childId: json['childId'] as int? ?? defaultZero,
    );

Map<String, dynamic> _$$SurvivalImplToJson(_$SurvivalImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fic': instance.fic,
      'vitA': instance.vitA,
      'measles': instance.measles,
      'defaulter': instance.defaulter,
      'covid': instance.covid,
      'height': instance.height,
      'weight': instance.weight,
      'childId': instance.childId,
    };
