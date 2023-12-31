import 'package:e_commerce/app/e_commerce_app.dart';
import 'package:e_commerce/core/database/cache_helper.dart';
import 'package:e_commerce/core/network/remote/dio_helper.dart';
import 'package:e_commerce/core/services/services_locator.dart';
import 'package:e_commerce/core/utls/values.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  DioHelperStore.init();
  setUpSeviceLocator();
  await getIt<CacheHelper>().init();
  token = CacheHelper().getData(key: 'token');
  nationlId = CacheHelper().getData(key: 'userId');
  runApp(const Ecommerce());
}
