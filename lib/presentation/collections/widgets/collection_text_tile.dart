import 'package:flutter/material.dart';
import 'package:glimmer_box/presentation/collections/viewmodels/collection_view_model.dart';

class CollectionTextTile extends StatelessWidget {
  const CollectionTextTile({
    required this.index,
    required this.viewModel,
    super.key,
    this.extent,
    this.backgroundColor,
    this.bottomSpace,
  });

  final int index;
  final CollectionViewModel viewModel;
  final double? extent;
  final double? bottomSpace;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final child = Container(
      color: backgroundColor ?? Colors.lightBlueAccent,
      height: extent,
      child: Center(
        child: Text(viewModel.name, style: const TextStyle(fontSize: 16)),
      ),
    );

    if (bottomSpace == null) {
      return child;
    }

    return Column(
      children: [
        Expanded(child: child),
        Container(
          height: bottomSpace,
          color: Colors.green,
        ),
      ],
    );
  }
}
