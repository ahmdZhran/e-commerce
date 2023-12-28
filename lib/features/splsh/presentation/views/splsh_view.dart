import 'package:e_commerce/core/database/cache_helper.dart';
import 'package:e_commerce/core/functions/navigation_method.dart';
import 'package:e_commerce/core/services/services_locator.dart';
import 'package:e_commerce/core/utls/app_assets.dart';
import 'package:e_commerce/core/utls/constants_routers.dart';
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
    navigateBasedOnConditions();

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

  void customNavigationDelayed(String path) {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        customReplacementNavigation(context, path);
      },
    );
  }

  void navigateBasedOnConditions() {
    bool isOnBoardingViewVisited =
        getIt<CacheHelper>().getData(key: 'isBoardingViewVisited') ?? false;
    bool isEmailSaved =
        getIt<CacheHelper>().getData(key: 'SavedEmail') ?? false;

    if (isEmailSaved) {
      // Email is saved, navigate to the navigation bar
      customNavigationDelayed(AppRouter.navigationBar);
    } else if (isOnBoardingViewVisited) {
      // Onboarding has been visited, navigate to the sign-in screen
      customNavigationDelayed(AppRouter.signin);
    } else {
      // Neither onboarding nor email is saved, navigate to the onboarding screen
      customNavigationDelayed(AppRouter.onBoarding);
    }
  }
}
