import 'package:e_commerce/app/e_commerce_app.dart';
import 'package:e_commerce/core/database/cache_helper.dart';
import 'package:e_commerce/core/services/services_locator.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setUpSeviceLocator();
  await getIt<CacheHelper>().init();
  runApp(const Ecommerce());
}
