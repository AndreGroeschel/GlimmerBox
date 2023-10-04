import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:glimmer_box/presentation/collections/viewmodels/collection_view_model.dart';
import 'package:octo_image/octo_image.dart';

class CollectionImageTile extends StatelessWidget {
  const CollectionImageTile({
    required this.index,
    required this.width,
    required this.height,
    required this.viewModel,
    super.key,
  });

  final int index;
  final int width;
  final int height;
  final CollectionViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width.toDouble(),
      height: height.toDouble(),
      child: OctoImage(
        image: CachedNetworkImageProvider(
          viewModel.imagePath,
        ),
        placeholderBuilder: OctoPlaceholder.circularProgressIndicator(),
        //errorBuilder: (context, error, stacktrace) => const Icon(Icons.error),
      ),
    );
  }
}
