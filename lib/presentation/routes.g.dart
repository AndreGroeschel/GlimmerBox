// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $homeRoute,
    ];

RouteBase get $homeRoute => GoRouteData.$route(
      path: '/',
      factory: $HomeRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'nfts/:chain/:name/:address',
          factory: $CollectionDetailsRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'nfts/:chain/:name/:address/:identifier',
          factory: $NftDetailsRouteExtension._fromState,
        ),
      ],
    );

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => const HomeRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $CollectionDetailsRouteExtension on CollectionDetailsRoute {
  static CollectionDetailsRoute _fromState(GoRouterState state) =>
      CollectionDetailsRoute(
        name: state.pathParameters['name']!,
        chain: state.pathParameters['chain']!,
        address: state.pathParameters['address']!,
      );

  String get location => GoRouteData.$location(
        '/nfts/${Uri.encodeComponent(chain)}/${Uri.encodeComponent(name)}/${Uri.encodeComponent(address)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $NftDetailsRouteExtension on NftDetailsRoute {
  static NftDetailsRoute _fromState(GoRouterState state) => NftDetailsRoute(
        name: state.pathParameters['name']!,
        chain: state.pathParameters['chain']!,
        identifier: state.pathParameters['identifier']!,
        address: state.pathParameters['address']!,
      );

  String get location => GoRouteData.$location(
        '/nfts/${Uri.encodeComponent(chain)}/${Uri.encodeComponent(name)}/${Uri.encodeComponent(address)}/${Uri.encodeComponent(identifier)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
