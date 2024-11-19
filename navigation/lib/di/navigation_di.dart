import 'package:core/core.dart';
import 'package:navigation/navigation.dart';

void setupNavigationDependencies() {
  appLocator.registerSingleton<AppRouter>(AppRouter());
}
