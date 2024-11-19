import 'package:core/core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(fieldRename: FieldRename.snake)
enum TaskStatus {
  @JsonValue('in progress')
  inProgress,
  failed,
  done,
  deleted;

  String getTitle() {
    switch (this) {
      case TaskStatus.inProgress:
        return LocaleKeys.taskStatuses_inProgress.tr();
      case TaskStatus.failed:
        return LocaleKeys.taskStatuses_failed.tr();
      case TaskStatus.done:
        return LocaleKeys.taskStatuses_done.tr();
      case TaskStatus.deleted:
        return LocaleKeys.taskStatuses_deleted.tr();
    }
  }
}
