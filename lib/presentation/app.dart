import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glimmer_box/application/collections/collection_event.dart';
import 'package:glimmer_box/application/collections/collections_bloc.dart';
import 'package:glimmer_box/domain/collections/repositories/collection_repository.dart';
import 'package:glimmer_box/injection_container.dart';
import 'package:glimmer_box/l10n/l10n.dart';
import 'package:glimmer_box/presentation/collections/widgets/collections_page.dart';
import 'package:logger/logger.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.lightBlue,
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: BlocProvider(
        create: (_) => CollectionBloc(
          collectionRepository:
              getIt<CollectionRepository>(), // Replace with your DI logic
          logger: Logger(), // Replace with your logging logic
        )..add(
            const LoadCollections(
              chainIdentifier: 'etherium',
              limit: 100,
            ),
          ),
        child: const CollectionsPage(),
      ),
    );
  }
}
