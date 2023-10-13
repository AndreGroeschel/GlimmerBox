import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:glimmer_box/presentation/collections/viewmodels/nft_view_model.dart';
import 'package:glimmer_box/presentation/collections/widgets/nft_tile.dart';
import 'package:glimmer_box/presentation/routes.dart';

/// A grid to display NFTs of a collection
class CollectionDetailsGrid extends StatelessWidget {
  const CollectionDetailsGrid({
    required this.nfts,
    required this.chainIdentifier,
    super.key,
  });

  final List<NftViewModel> nfts;
  final String chainIdentifier;
  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      padding: const EdgeInsets.all(16),
      itemCount: nfts.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () => NftDetailsRoute(
            name: nfts[index].name,
            chain: chainIdentifier,
            address: nfts[index].contract,
            identifier: nfts[index].identifier,
          ).go(context),
          // Assuming CollectionViewModel has an id property.
          child: NftTile(
            index: index,
            width: 100,
            height: (index % 5 + 1) * 100,
            viewModel: nfts[index],
          ),
        );
      },
    );
  }
}
