import 'package:e_commerce/core/utls/app_color.dart';
import 'package:e_commerce/features/splsh/presentation/views/splsh_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.kBlackColor,
        useMaterial3: true,
      ),
    routerConfig: ,
    );
  }
}
