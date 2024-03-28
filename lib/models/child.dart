import 'package:brgy_abella/utilities/constant.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'child.freezed.dart';
part 'child.g.dart';

@freezed
class Child with _$Child {
  const factory Child({
    @JsonKey(name: "id") @Default(defaultZero) int id,
    @JsonKey(name: "name") @Default(emptyString) String name,
    @JsonKey(name: "age") @Default(defaultZero) int age,
    @JsonKey(name: "gender") @Default(emptyString) String gender,
    @JsonKey(name: "birthdate") @Default(emptyString) String birthdate,
    @JsonKey(name: "birthRegistered") @Default(emptyString) String birthRegistered,
    @JsonKey(name: "zone") @Default(emptyString) String zone,
    @JsonKey(name: "mothersName") @Default(emptyString) String mothersName,
    @JsonKey(name: "fathersName") @Default(emptyString) String fathersName,
  }) = _Child;

  factory Child.fromJson(Map<String, dynamic> json) => _$ChildFromJson(json);
}
