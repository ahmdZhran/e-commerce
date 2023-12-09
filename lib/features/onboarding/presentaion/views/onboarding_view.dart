import 'package:e_commerce/features/onboarding/presentaion/widgets/onboarding_images.dart';
import 'package:flutter/material.dart';

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
