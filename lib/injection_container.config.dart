// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i4;

import 'domain/collections/datasources/collection_remote_datasource.dart'
    as _i7;
import 'domain/collections/repositories/collection_repository.dart' as _i9;
import 'infrastructure/collections/datasources/collection_remote_datasource_impl.dart'
    as _i8;
import 'infrastructure/collections/endpoints/collections_endpoint.dart' as _i6;
import 'infrastructure/collections/endpoints/nfts_endpoint.dart' as _i5;
import 'infrastructure/collections/repositories/collections_repository_impl.dart'
    as _i10;
import 'infrastructure/modules/register_modules.dart' as _i11;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i3.Dio>(() => registerModule.dio);
    gh.lazySingleton<_i4.Logger>(() => registerModule.logger);
    gh.lazySingleton<_i5.NftsEndpoint>(
        () => registerModule.getNftsEndpoint(gh<_i3.Dio>()));
    gh.lazySingleton<_i6.CollectionsEndpoint>(
        () => registerModule.getCollectionEndpoint(gh<_i3.Dio>()));
    gh.lazySingleton<_i7.CollectionRemoteDataSource>(
        () => _i8.CollectionRemoteDataSourceImpl(
              gh<_i6.CollectionsEndpoint>(),
              gh<_i5.NftsEndpoint>(),
              gh<_i4.Logger>(),
            ));
    gh.lazySingleton<_i9.CollectionRepository>(() =>
        _i10.CollectionsRepositoryImpl(
            collectionRemoteDataSource: gh<_i7.CollectionRemoteDataSource>()));
    return this;
  }
}

class _$RegisterModule extends _i11.RegisterModule {}
