import 'dart:async';

import 'package:core/core.dart';
import 'package:domain/domain.dart';

part 'realtime_screen_event.dart';

part 'realtime_screen_state.dart';

class RealtimeScreenBloc extends Bloc<RealtimeScreenEvent, RealtimeScreenState> {
  final ObserveTasksUseCase _observeTasksUseCase;
  final DeleteTaskUseCase _deleteTaskUseCase;

  StreamSubscription<List<TaskModel>>? _tasksSubscription;

  RealtimeScreenBloc({
    required ObserveTasksUseCase observeTasksUseCase,
    required DeleteTaskUseCase deleteTaskUseCase,
  })  : _observeTasksUseCase = observeTasksUseCase,
        _deleteTaskUseCase = deleteTaskUseCase,
        super(const RealtimeScreenState()) {
    on<Initialize>(_onInitialize);
    on<UpdateTasks>(_onUpdateTask);
    on<DeleteTask>(_onDeleteTask);
  }

  void _onInitialize(
    Initialize event,
    Emitter<RealtimeScreenState> emit,
  ) {
    _tasksSubscription = _observeTasksUseCase.execute().listen(
      (List<TaskModel> tasks) {
        add(UpdateTasks(tasks));
      },
    );
  }

  Future<void> _onUpdateTask(
    UpdateTasks event,
    Emitter<RealtimeScreenState> emit,
  ) async {
    emit(
      state.copyWith(
        tasks: event.tasks,
      ),
    );
  }

  Future<void> _onDeleteTask(
    DeleteTask event,
    Emitter<RealtimeScreenState> emit,
  ) async {
    final String? id = state.tasks?[event.index].taskId;

    if (id != null) {
      await _deleteTaskUseCase.execute(id);
    }
  }

  @override
  Future<void> close() async {
    await _tasksSubscription?.cancel();
    await super.close();
  }
}
