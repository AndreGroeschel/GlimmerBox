import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glimmer_box/application/collections/blocs/nft_details_bloc.dart';
import 'package:glimmer_box/application/collections/states/nft_details_state.dart';
import 'package:glimmer_box/presentation/collections/viewmodels/nft_details_view_model.dart';
import 'package:octo_image/octo_image.dart';

class NftDetailsScreen extends StatelessWidget {
  const NftDetailsScreen({
    required this.name,
    required this.chain,
    required this.identifier,
    required this.address,
    super.key,
  });

  final String name;
  final String chain;
  final String identifier;
  final String address;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(name)),
      body: BlocBuilder<NftDetailsBloc, NftDetailsState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: Text('Initial State')),
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (nftDetails) {
              //return Text("data");
              final nftDetailsViewModel =
                  NftDetailsViewModel.fromNftDetails(nftDetails: nftDetails);
              return Scaffold(
                body: Column(
                  children: [
                    Expanded(
                      child: SizedBox(
                        width: MediaQuery.sizeOf(context).width,
                        height: 100,
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                            0,
                            16,
                            0,
                            0,
                          ),
                          child: Column(
                            children: [
                              Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: Colors.white70,
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: OctoImage(
                                        image: CachedNetworkImageProvider(
                                          nftDetailsViewModel.imageUrl,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          AlignmentDirectional.centerStart,
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(
                                          0,
                                          16,
                                          0,
                                          0,
                                        ),
                                        child: Text(
                                          nftDetailsViewModel.name,
                                          textAlign: TextAlign.start,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          AlignmentDirectional.centerStart,
                                      child: Text(
                                        nftDetailsViewModel.description,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
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
}
