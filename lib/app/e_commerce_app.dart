import 'package:e_commerce/core/router/app_router.dart';
import 'package:e_commerce/core/utls/app_color.dart';
import 'package:flutter/material.dart';

class Ecommerce extends StatelessWidget {
  const Ecommerce({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.kBlackColor,
        useMaterial3: true,
      ),
      routerConfig: router,
    );
  }
}
