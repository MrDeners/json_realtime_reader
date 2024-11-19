part of 'realtime_screen_bloc.dart';

class RealtimeScreenState {
  final List<TaskModel>? tasks;
  final bool isLoading;

  const RealtimeScreenState({
    this.tasks,
    this.isLoading = false,
  });

  RealtimeScreenState copyWith({
    List<TaskModel>? tasks,
    bool? isLoading,
  }) {
    return RealtimeScreenState(
      tasks: tasks ?? this.tasks,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
