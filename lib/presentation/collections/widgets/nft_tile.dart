import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:glimmer_box/presentation/collections/viewmodels/nft_view_model.dart';
import 'package:octo_image/octo_image.dart';

class NftTile extends StatelessWidget {
  const NftTile({
    required this.index,
    required this.width,
    required this.height,
    required this.viewModel,
    super.key,
  });

  final int index;
  final int width;
  final int height;
  final NftViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white70, // Background color
        borderRadius: BorderRadius.circular(16), // Rounded corners
        boxShadow: [
          // Shadow
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            offset: const Offset(0, 4),
            blurRadius: 6,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            child: ClipRRect(
              // Clip the image to match the container's rounded corners
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              // child: Container(),
              child: OctoImage(
                fit: BoxFit.cover,
                fadeInDuration: const Duration(milliseconds: 200),
                image: CachedNetworkImageProvider(
                  viewModel.imageUrl,
                ),
                // progressIndicatorBuilder:
                //     OctoProgressIndicator.circularProgressIndicator(),
                // placeholderBuilder: ,
              ),
            ),
          ),
          const SizedBox(height: 16),
          Text(viewModel.name),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
