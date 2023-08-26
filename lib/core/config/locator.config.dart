import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../helper/navigation_helper.dart' as _i4;
import '../services/navigation_service/navigation_service.dart' as _i3;

_i1.GetIt $initGetIt(_i1.GetIt getIt,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(getIt, environment, environmentFilter);

  gh.singleton<_i3.NavigationService>(_i3.NavigationService());
  gh.singleton<_i4.NavigationHelpers>(_i4.NavigationHelpers());

  return getIt;
}
