import 'package:domain/domain.dart';
import 'package:domain/usecases/src/usecase.dart';

class DeleteTaskUseCase implements FutureUseCase<String, void> {
  final TasksRepository _tasksRepository;

  const DeleteTaskUseCase({
    required TasksRepository tasksRepository,
  }) : _tasksRepository = tasksRepository;

  @override
  Future<void> execute(String id) async {
    return _tasksRepository.deleteTask(id);
  }
}
