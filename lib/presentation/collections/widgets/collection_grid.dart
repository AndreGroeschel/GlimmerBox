import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:glimmer_box/presentation/collections/viewmodels/collection_view_model.dart';
import 'package:glimmer_box/presentation/collections/widgets/collection_image_tile.dart';
import 'package:glimmer_box/presentation/collections/widgets/collection_text_tile.dart';

/// A grid to display collections
class CollectionGrid extends StatelessWidget {
  const CollectionGrid({required this.collections, super.key});

  final List<CollectionViewModel> collections;
  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      itemCount: collections.length,
      itemBuilder: (context, index) {
        if (collections[index].imagePath.isEmpty) {
          return CollectionTextTile(
            index: index,
            viewModel: collections[index],
            extent: (index % 5 + 1) * 50,
          );
        } else {
          return CollectionImageTile(
            index: index,
            width: 100,
            height: (index % 5 + 1) * 100,
            viewModel: collections[index],
          );
        }
      },
    );
  }
}
