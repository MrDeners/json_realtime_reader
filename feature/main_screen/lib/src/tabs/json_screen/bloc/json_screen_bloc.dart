import 'package:core/core.dart';
import 'package:domain/domain.dart';

part 'json_screen_event.dart';

part 'json_screen_state.dart';

class JsonScreenBloc extends Bloc<JsonScreenEvent, JsonScreenState> {
  final GetScreenComponentsUseCase _getScreenComponentsUseCase;

  JsonScreenBloc({
    required GetScreenComponentsUseCase getScreenComponentsUseCase,
  })  : _getScreenComponentsUseCase = getScreenComponentsUseCase,
        super(const JsonScreenState()) {
    on<Initialize>(_onInitialize);
    on<Continue>(_onContinue);
  }

  Future<void> _onInitialize(
    Initialize event,
    Emitter<JsonScreenState> emit,
  ) async {
    emit(
      state.copyWith(isLoading: true),
    );

    final ScreenModel screen = await _getScreenComponentsUseCase.execute();

    emit(
      state.copyWith(
        screen: screen,
        isLoading: false,
      ),
    );
  }

  Future<void> _onContinue(
    Continue event,
    Emitter<JsonScreenState> emit,
  ) async {
    //TODO: Here we have availability to add any logic
  }
}
