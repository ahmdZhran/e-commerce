import 'package:e_commerce/core/utls/app_assets.dart';
import 'package:e_commerce/features/onboarding/data/model/onboading_data.dart';
import 'package:e_commerce/features/onboarding/presentaion/widgets/onboarding_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 90,
          ),
          OnBoardingImagesWidget()
        ],
      ),
    );
  }
}
