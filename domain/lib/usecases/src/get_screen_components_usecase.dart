import 'package:domain/domain.dart';
import 'package:domain/usecases/src/usecase.dart';

class GetScreenComponentsUseCase implements FutureUseCase<NoParams, ScreenModel> {
  final ScreenRepository _screenRepository;

  const GetScreenComponentsUseCase({
    required ScreenRepository screenRepository,
  }) : _screenRepository = screenRepository;

  @override
  Future<ScreenModel> execute([NoParams? params]) async {
    return _screenRepository.getScreenComponents();
  }
}
