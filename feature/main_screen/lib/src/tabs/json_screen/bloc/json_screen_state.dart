part of 'json_screen_bloc.dart';

class JsonScreenState {
  final ScreenModel? screen;
  final bool isLoading;

  const JsonScreenState({
    this.screen,
    this.isLoading = false,
  });

  JsonScreenState copyWith({
    ScreenModel? screen,
    bool? isLoading,
  }) {
    return JsonScreenState(
      screen: screen ?? this.screen,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
