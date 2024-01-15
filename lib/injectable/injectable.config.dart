// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:responsive_counter/data/counter_details/service/counter_details_service_impl.dart'
    as _i4;
import 'package:responsive_counter/data/counters/service/counters_service_impl.dart'
    as _i6;
import 'package:responsive_counter/domain/counter_details/service/counter_details_service.dart'
    as _i3;
import 'package:responsive_counter/domain/counters/service/counters_service.dart'
    as _i5;
import 'package:responsive_counter/pages/counter_details/cubit/counter_details_cubit.dart'
    as _i7;
import 'package:responsive_counter/pages/counters/cubit/counters_cubit.dart'
    as _i8;

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
    gh.lazySingleton<_i3.CounterDetailsService>(
        () => _i4.CounterDetailsServiceImpl());
    gh.lazySingleton<_i5.CountersService>(() => _i6.CountersServiceImpl());
    gh.factory<_i7.CounterDetailsCubit>(() => _i7.CounterDetailsCubit(
          gh<_i5.CountersService>(),
          gh<_i3.CounterDetailsService>(),
        ));
    gh.factory<_i8.CountersCubit>(() => _i8.CountersCubit(
          gh<_i5.CountersService>(),
          gh<_i3.CounterDetailsService>(),
        ));
    return this;
  }
}
