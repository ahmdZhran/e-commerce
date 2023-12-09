import 'package:e_commerce/core/utls/app_color.dart';
import 'package:e_commerce/features/onboarding/data/model/onboading_data.dart';
import 'package:e_commerce/features/onboarding/presentaion/widgets/cusomt_smooth_page_indicatro.dart';
import 'package:e_commerce/features/onboarding/presentaion/widgets/onboarding_images.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingView extends StatelessWidget {
  OnBoardingView({super.key});
  final PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 90,
          ),
          OnBoardingImagesWidget(
            controller: controller,
          ),
          CustomSmoothPageIndicator(controller: controller)
        ],
      ),
    );
  }
}
