import 'package:core/core.dart';
import 'package:data/providers/providers.dart';
import 'package:data/repositories/repositories.dart';
import 'package:domain/domain.dart';

final DataDI dataDI = DataDI();

class DataDI {
  Future<void> initDependencies() async {
    _initConfiguration();
    _initProviders();
    _initRepositories();
    _initUseCases();
  }

  void _initConfiguration() {}

  void _initProviders() {
    appLocator.registerLazySingleton<ScreenProvider>(ScreenProvider.new);

    appLocator.registerLazySingleton(DatabaseProvider.new);
  }

  void _initRepositories() {
    appLocator.registerLazySingleton<ScreenRepository>(
      () => ScreenRepositoryImpl(
        screenProvider: appLocator<ScreenProvider>(),
      ),
    );

    appLocator.registerLazySingleton<TasksRepository>(
      () => TasksRepositoryImpl(
        databaseProvider: appLocator<DatabaseProvider>(),
      ),
    );
  }

  void _initUseCases() {
    appLocator.registerLazySingleton<GetScreenComponentsUseCase>(
      () => GetScreenComponentsUseCase(
        screenRepository: appLocator<ScreenRepository>(),
      ),
    );

    appLocator.registerLazySingleton<ObserveTasksUseCase>(
      () => ObserveTasksUseCase(
        tasksRepository: appLocator<TasksRepository>(),
      ),
    );

    appLocator.registerLazySingleton<DeleteTaskUseCase>(
      () => DeleteTaskUseCase(
        tasksRepository: appLocator<TasksRepository>(),
      ),
    );
  }
}
