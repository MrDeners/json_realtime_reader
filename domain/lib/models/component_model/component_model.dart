import 'package:domain/models/component_model/component_type_enum.dart';
import 'package:domain/models/component_params_model/component_params_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'component_model.freezed.dart';

part 'component_model.g.dart';

@freezed
class ComponentModel with _$ComponentModel {
  const factory ComponentModel({
    @Default(0) int id,
    @Default(ComponentType.undefined) ComponentType type,
    @Default(ComponentParamsModel()) ComponentParamsModel params,
  }) = _ComponentModel;

  const ComponentModel._();

  factory ComponentModel.fromJson(Map<String, dynamic> json) => _$ComponentModelFromJson(json);
}
