import 'package:go_router/go_router.dart';
import 'package:townsquare/core/router/routes/app_routes.dart';

class AppRouter {
  final GoRouter _router;

  const AppRouter({
    required GoRouter router,
  }) : _router = router;

  GoRouterDelegate get routerDelegate => _router.routerDelegate;

  GoRouteInformationParser get routeInformationParser =>
      _router.routeInformationParser;

  GoRouteInformationProvider get routeInformationProvider =>
      _router.routeInformationProvider;

  Future<T?> push<T extends Object?>(
    AppRoute route, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, dynamic> queryParameters = const <String, dynamic>{},
    Object? extra,
  }) {
    return _router.pushNamed(
      route.name,
      pathParameters: pathParameters,
      queryParameters: queryParameters,
      extra: extra,
    );
  }

  void go(
    AppRoute route, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, dynamic> queryParameters = const <String, dynamic>{},
    Object? extra,
  }) {
    return _router.goNamed(
      route.name,
      pathParameters: pathParameters,
      queryParameters: queryParameters,
      extra: extra,
    );
  }

  Future<T?> replace<T extends Object?>(
    AppRoute route, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, dynamic> queryParameters = const <String, dynamic>{},
    Object? extra,
  }) {
    return _router.replaceNamed(
      route.name,
      pathParameters: pathParameters,
      queryParameters: queryParameters,
      extra: extra,
    );
  }

  void refresh() => _router.refresh();

  void safePop() => _router.canPop() ? _router.pop() : null;
}
