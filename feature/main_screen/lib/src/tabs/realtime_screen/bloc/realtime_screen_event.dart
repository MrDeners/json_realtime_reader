part of 'realtime_screen_bloc.dart';

abstract class RealtimeScreenEvent {
  const RealtimeScreenEvent();
}

class Initialize extends RealtimeScreenEvent {
  const Initialize();
}

class UpdateTasks extends RealtimeScreenEvent {
  final List<TaskModel> tasks;

  const UpdateTasks(this.tasks);
}

class DeleteTask extends RealtimeScreenEvent {
  final int index;

  const DeleteTask(this.index);
}
