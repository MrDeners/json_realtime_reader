import 'package:core/core.dart';
import 'package:domain/models/task_model/task_status_enum.dart';

part 'task_model.freezed.dart';

part 'task_model.g.dart';

@freezed
class TaskModel with _$TaskModel {
  const factory TaskModel({
    @Default('0') String taskId,
    @Default(TaskStatus.inProgress) TaskStatus status,
    @JsonKey(fromJson: timestampToDateTime, toJson: dateTimeToTimestamp) DateTime? createdAt,
  }) = _TaskModel;

  factory TaskModel.fromJson(Map<String, dynamic> json) => _$TaskModelFromJson(json);
}
