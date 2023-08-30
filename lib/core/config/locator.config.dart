import 'package:get_it/get_it.dart' as i1;
import 'package:injectable/injectable.dart' as i2;

import '../services/navigation_service/navigation_helper.dart' as i4;
import '../services/navigation_service/navigation_service.dart' as i3;

i1.GetIt $initGetIt(i1.GetIt getIt,
    {String? environment, i2.EnvironmentFilter? environmentFilter}) {
  final gh = i2.GetItHelper(getIt, environment, environmentFilter);

  gh.singleton<i3.NavigationService>(i3.NavigationService());
  gh.singleton<i4.NavigationHelpers>(i4.NavigationHelpers());

  return getIt;
}
