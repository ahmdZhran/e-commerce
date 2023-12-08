import 'package:e_commerce/core/utls/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplshView extends StatelessWidget {
  const SplshView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SvgPicture.asset(AppAssets.shopLogo),
      ),
    );
  }
}
