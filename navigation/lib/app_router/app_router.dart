import 'package:auto_route/auto_route.dart';
import 'package:main_screen/main_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(
  modules: <Type>[MainScreenModule],
  replaceInRouteName: 'Form,Screen,Route',
)
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => <AutoRoute>[
        AutoRoute(
          page: MainRoute.page,
          path: '/',
          initial: true,
        ),
      ];
}
