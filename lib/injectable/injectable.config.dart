// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:responsive_counter/domain/counter_details/service/counter_details_service.dart'
    as _i3;
import 'package:responsive_counter/domain/counters/service/counters_service.dart'
    as _i4;
import 'package:responsive_counter/pages/counter_details/cubit/counter_details_cubit.dart'
    as _i5;
import 'package:responsive_counter/pages/counters/cubit/counters_cubit.dart'
    as _i6;

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
    gh.singleton<_i3.CounterDetailsService>(_i3.CounterDetailsService());
    gh.singleton<_i4.CountersService>(_i4.CountersService());
    gh.factory<_i5.CounterDetailsCubit>(() => _i5.CounterDetailsCubit(
          gh<_i4.CountersService>(),
          gh<_i3.CounterDetailsService>(),
        ));
    gh.factory<_i6.CountersCubit>(() => _i6.CountersCubit(
          gh<_i4.CountersService>(),
          gh<_i3.CounterDetailsService>(),
        ));
    return this;
  }
}
