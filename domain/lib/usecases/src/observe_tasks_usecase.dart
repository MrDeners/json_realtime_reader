import 'package:domain/domain.dart';
import 'package:domain/usecases/src/usecase.dart';

class ObserveTasksUseCase implements StreamUseCase<NoParams, List<TaskModel>> {
  final TasksRepository _tasksRepository;

  const ObserveTasksUseCase({
    required TasksRepository tasksRepository,
  }) : _tasksRepository = tasksRepository;

  @override
  Stream<List<TaskModel>> execute([NoParams? params]) {
    return _tasksRepository.getTasksRealtime();
  }
}
