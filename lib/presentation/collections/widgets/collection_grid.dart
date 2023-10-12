import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:glimmer_box/presentation/collections/viewmodels/collection_view_model.dart';
import 'package:glimmer_box/presentation/collections/widgets/collection_image_tile.dart';
import 'package:glimmer_box/presentation/collections/widgets/collection_text_tile.dart';
import 'package:glimmer_box/presentation/routes.dart';

/// A grid to display collections
class CollectionGrid extends StatelessWidget {
  const CollectionGrid({required this.collections, super.key});

  final List<CollectionViewModel> collections;
  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      padding: const EdgeInsets.all(16),
      itemCount: collections.length,
      itemBuilder: (context, index) {
        final tileWidget = collections[index].imagePath.isEmpty
            ? CollectionTextTile(
                index: index,
                viewModel: collections[index],
                extent: (index % 5 + 1) * 50,
              )
            : CollectionImageTile(
                index: index,
                width: 100,
                height: (index % 5 + 1) * 100,
                viewModel: collections[index],
              );

        // link to the first contract of the collection
        if (collections[index].contracts.isNotEmpty) {
          final firstContract = collections[index].contracts[0];
          return GestureDetector(
            onTap: () => CollectionDetailsRoute(
              name: collections[index].name,
              chain: firstContract.chain,
              address: firstContract.address,
            ).go(context),
            // Assuming CollectionViewModel has an id property.
            child: tileWidget,
          );
        } else {
          return tileWidget;
        }
      },
    );
  }
}
