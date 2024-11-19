import 'package:freezed_annotation/freezed_annotation.dart';

part 'component_params_model.freezed.dart';
part 'component_params_model.g.dart';

@freezed
class ComponentParamsModel with _$ComponentParamsModel {
  const factory ComponentParamsModel({
    @Default('FFFFFF') String color,
    @Default('Good news!') String text,
    @Default('email') String inputName,
    @Default(32.0) double size,
    @Default(16.0) double paddingV,
    @Default(12.0) double paddingH,
  }) = _ComponentModel;

  const ComponentParamsModel._();

  factory ComponentParamsModel.fromJson(Map<String, dynamic> json) => _$ComponentParamsModelFromJson(json);
}
