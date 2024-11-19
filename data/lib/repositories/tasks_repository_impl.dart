import 'dart:async';

import 'package:data/constants/database_constants.dart';
import 'package:data/providers/database_provider.dart';
import 'package:domain/domain.dart';

class TasksRepositoryImpl implements TasksRepository {
  final DatabaseProvider _databaseProvider;

  final StreamController<List<TaskModel>> _tasksController =
      StreamController<List<TaskModel>>.broadcast();

  TasksRepositoryImpl({
    required DatabaseProvider databaseProvider,
  }) : _databaseProvider = databaseProvider;

  @override
  Stream<List<TaskModel>> getTasksRealtime() {
    _databaseProvider.getDataRealtime(
      collectionKey: DatabaseConstants.tasksCollectionKey,
      onData: (List<Map<String, dynamic>> data) {
        final List<TaskModel> tasks = data.map(TaskModel.fromJson).toList();

        unawaited(Future<void>(() => _tasksController.add(tasks)));
      },
    );

    return _tasksController.stream;
  }

  @override
  void deleteTask(String id) => _databaseProvider.deleteDataWithFilter(
        fieldValue: id,
        fieldKey: DatabaseConstants.tasksIdFieldKey,
        collectionKey: DatabaseConstants.tasksCollectionKey,
      );
}
