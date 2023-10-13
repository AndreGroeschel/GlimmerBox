import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glimmer_box/application/collections/collection_details_event.dart';
import 'package:glimmer_box/application/collections/collection_event.dart';
import 'package:glimmer_box/application/collections/collections_bloc.dart';
import 'package:glimmer_box/application/collections/collections_details_bloc.dart';
import 'package:glimmer_box/application/constants.dart';
import 'package:glimmer_box/domain/collections/repositories/collection_repository.dart';
import 'package:glimmer_box/infrastructure/logger/logger.dart';
import 'package:glimmer_box/injection_container.dart';
import 'package:glimmer_box/presentation/collections/screens/collection_details_screen.dart';
import 'package:glimmer_box/presentation/collections/screens/collections_overview_screen.dart';
import 'package:go_router/go_router.dart';

part 'routes.g.dart';

final GoRouter appRouter = GoRouter(
  debugLogDiagnostics: true,
  routes: $appRoutes,
);

@TypedGoRoute<HomeRoute>(
  path: '/',
  routes: <TypedGoRoute<GoRouteData>>[
    TypedGoRoute<CollectionDetailsRoute>(
      path: 'nfts/:chain/:name/:address',
    ),
  ],
)
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return MaterialPage(
      child: BlocProvider<CollectionBloc>(
        create: (context) => CollectionBloc(
          collectionRepository: getIt<CollectionRepository>(),
          logger: appLogger,
        )..add(
            const LoadCollections(
              chainIdentifier: Constants.defaultChain,
              limit: Constants.maxCollectionsToDisplay,
            ),
          ),
        child: const CollectionsOverviewScreen(),
      ),
    );
  }
}

class CollectionDetailsRoute extends GoRouteData {
  const CollectionDetailsRoute({
    required this.name,
    required this.chain,
    required this.address,
  });

  final String name;
  final String chain;
  final String address;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return MaterialPage(
      child: BlocProvider<CollectionDetailsBloc>(
        create: (context) => CollectionDetailsBloc(
          collectionRepository: getIt<CollectionRepository>(),
          logger: appLogger,
        )..add(
            LoadCollectionDetails(
              address: address,
              chainIdentifier: chain,
              limit: Constants.maxNftsToDisplay,
            ),
          ),
        child:
            CollectionDetailsScreen(name: name, chain: chain, address: address),
      ),
    );
  }
}
