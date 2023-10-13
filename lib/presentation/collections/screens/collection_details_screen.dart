import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glimmer_box/application/collections/blocs/collections_details_bloc.dart';
import 'package:glimmer_box/application/collections/states/collection_details_state.dart';
import 'package:glimmer_box/presentation/collections/viewmodels/nft_view_model.dart';
import 'package:glimmer_box/presentation/collections/widgets/collection_details_grid.dart';

class CollectionDetailsScreen extends StatelessWidget {
  const CollectionDetailsScreen({
    required this.name,
    required this.chain,
    required this.address,
    super.key,
  });

  final String name;
  final String chain;
  final String address;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(name)),
      body: BlocBuilder<CollectionDetailsBloc, CollectionDetailsState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: Text('Initial State')),
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (collectionDetailsPage) {
              //return Text("data");
              final nftViewModels = collectionDetailsPage.nfts
                  .map(
                    (e) => NftViewModel.fromNft(nft: e),
                  )
                  .toList();
              return Scaffold(
                body: Stack(
                  key: const Key('collectionsKey'),
                  children: [
                    CollectionDetailsGrid(
                      nfts: nftViewModels,
                      chainIdentifier: chain,
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
}
