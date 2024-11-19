import 'package:domain/models/component_model/component_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'screen_model.freezed.dart';
part 'screen_model.g.dart';

@freezed
class ScreenModel with _$ScreenModel {
  const factory ScreenModel({
    @Default(0) int id,
    @Default('000000') String backgroundColor,
    @Default(<ComponentModel>[]) List<ComponentModel> components,
  }) = _ScreenModel;

  const ScreenModel._();

  factory ScreenModel.fromJson(Map<String, dynamic> json) => _$ScreenModelFromJson(json);
}