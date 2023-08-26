import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../config/locator.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
void setupDependency() {
  $initGetIt(getIt, environment: Environment.prod);
}
