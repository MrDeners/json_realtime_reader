import 'package:domain/models/screen_model/screen_model.dart';

abstract class ScreenRepository {
  Future<ScreenModel> getScreenComponents();
}
