import 'package:domain/domain.dart';

abstract class TasksRepository {
  Stream<List<TaskModel>> getTasksRealtime();

  void deleteTask(String id);
}
