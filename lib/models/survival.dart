// ignore_for_file: invalid_annotation_target

import 'package:brgy_abella/utilities/constant.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'survival.freezed.dart';
part 'survival.g.dart';

@freezed
class Survival with _$Survival {
  const factory Survival({
    @JsonKey(name: "id") @Default(defaultZero) int id,
    @JsonKey(name: "fic") @Default(defaultZero) int fic,
    @JsonKey(name: "vitA") @Default(defaultZero) int vitA,
    @JsonKey(name: "measles") @Default(defaultZero) int measles,
    @JsonKey(name: "defaulter") @Default(defaultZero) int defaulter,
    @JsonKey(name: "covid") @Default(defaultZero) int covid,
    @JsonKey(name: "height") @Default(defaultZeroDouble) double height,
    @JsonKey(name: "weight") @Default(defaultZeroDouble) double weight,
    @JsonKey(name: "childId") @Default(defaultZero) int childId,
  }) = _Survival;

  factory Survival.fromJson(Map<String, dynamic> json) => _$SurvivalFromJson(json);
}
