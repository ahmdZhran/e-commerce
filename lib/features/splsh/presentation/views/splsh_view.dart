import 'package:e_commerce/core/functions/navigation_method.dart';
import 'package:e_commerce/core/utls/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplshView extends StatefulWidget {
  const SplshView({super.key});

  @override
  State<SplshView> createState() => _SplshViewState();
}

class _SplshViewState extends State<SplshView> {
  @override
  void initState() {
    customNavigationDelayed();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SvgPicture.asset(AppAssets.shopLogo),
      ),
    );
  }

  void customNavigationDelayed() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        customNavigation(context, '/onBoarding');
      },
    );
  }
}
