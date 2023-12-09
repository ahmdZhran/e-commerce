import 'package:get_it/get_it.dart';

import '../database/cache_helper.dart';

final getIt = GetIt.instance;
void setUpSeviceLocator() {
  getIt.registerSingleton<CacheHelper>(CacheHelper());
}
