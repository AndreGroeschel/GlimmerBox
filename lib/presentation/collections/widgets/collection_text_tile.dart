import 'package:flutter/material.dart';
import 'package:glimmer_box/presentation/collections/viewmodels/collection_view_model.dart';

class CollectionTextTile extends StatelessWidget {
  const CollectionTextTile({
    required this.index,
    required this.viewModel,
    super.key,
    this.extent,
    this.bottomSpace,
  });

  final int index;
  final CollectionViewModel viewModel;
  final double? extent;
  final double? bottomSpace;

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
          const SizedBox(
            child: ClipRRect(
              // Clip the image to match the container's rounded corners
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              child: Placeholder(
                color: Colors.lightBlue,
                fallbackHeight: 100,
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
