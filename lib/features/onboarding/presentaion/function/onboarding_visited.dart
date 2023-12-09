import 'package:e_commerce/core/database/cache_helper.dart';
import 'package:e_commerce/core/services/services_locator.dart';

void onBoardingVisited() {
  getIt<CacheHelper>().saveData(key: 'isBoardingViewVisited', value: true);
}
