import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glimmer_box/application/collections/collection_event.dart';
import 'package:glimmer_box/application/collections/collection_state.dart';
import 'package:glimmer_box/application/collections/collections_bloc.dart';
import 'package:glimmer_box/application/constants.dart';
import 'package:glimmer_box/presentation/collections/viewmodels/collection_view_model.dart';
import 'package:glimmer_box/presentation/collections/widgets/collection_grid.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class CollectionsOverviewScreen extends StatelessWidget {
  const CollectionsOverviewScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Open Sea Collections'),
      ),
      body: BlocBuilder<CollectionBloc, CollectionState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: Text('Initial State')),
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (collectionPage) {
              //return Text("data");
              final collectionViewModels = collectionPage.collections
                  .map(
                    (e) => CollectionViewModel.fromCollection(collection: e),
                  )
                  .toList();
              return Scaffold(
                body: Stack(
                  key: const Key('collectionsKey'),
                  children: [
                    LiquidPullToRefresh(
                      onRefresh: () =>
                          _handleRefresh(context.read<CollectionBloc>()),
                      backgroundColor: Colors.lightBlue,
                      color: Colors.lightBlueAccent,
                      child: CollectionGrid(
                        collections: collectionViewModels,
                      ),
                    ),
                    Positioned(
                      bottom: 16,
                      right: 16,
                      child: FloatingActionButton(
                        backgroundColor: Colors.orangeAccent,
                        foregroundColor: Colors.white,
                        child: const Icon(Icons.navigate_next),
                        onPressed: () {
                          context.read<CollectionBloc>().add(
                                LoadCollections(
                                  chainIdentifier: Constants.defaultChain,
                                  limit: Constants.maxCollectionsToDisplay,
                                  nextCursor: collectionPage.next,
                                ),
                              );
                        },
                      ),
                    ),
                  ],
                ),
              );
            },
            error: (failure) => Center(child: Text('Error: $failure')),
          );
        },
      ),
    );
  }

  Future<void> _handleRefresh(CollectionBloc bloc) {
    final completer = Completer<void>();
    bloc.add(
      const LoadCollections(
        chainIdentifier: Constants.defaultChain,
        limit: Constants.maxCollectionsToDisplay,
      ),
    );
    completer.complete();
    return completer.future;
  }
}
