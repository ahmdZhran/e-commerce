import 'package:e_commerce/app/e_commerce_app.dart';
import 'package:e_commerce/core/database/cache_helper.dart';
import 'package:e_commerce/core/network/remote/dio_helper.dart';
import 'package:e_commerce/core/services/services_locator.dart';
import 'package:flutter/material.dart';

void main() async {
  print('start=========================================================start');
  WidgetsFlutterBinding.ensureInitialized();
  print(
      'ensureInitialized================================================ensureInitialized');
  DioHelperStore.init();
  print(
      'dio Helper==========================dio helper======================dio helper');
  setUpSeviceLocator();
  await getIt<CacheHelper>().init();
  print(
      'get it cache helper====================================================cache helper');
  runApp(const Ecommerce());
}
