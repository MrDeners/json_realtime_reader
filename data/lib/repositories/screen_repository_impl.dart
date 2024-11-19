import 'package:data/providers/providers.dart';
import 'package:domain/domain.dart';

class ScreenRepositoryImpl implements ScreenRepository {
  final ScreenProvider _screenProvider;

  const ScreenRepositoryImpl({
    required ScreenProvider screenProvider,
  }) : _screenProvider = screenProvider;

  @override
  Future<ScreenModel> getScreenComponents() async {
    final Map<String, dynamic> data = await _screenProvider.getScreenComponents();
    final ScreenModel screen = ScreenModel.fromJson(data);

    return screen;
  }
}
