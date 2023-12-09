import 'package:e_commerce/core/utls/app_color.dart';
import 'package:e_commerce/features/onboarding/data/model/onboading_data.dart';
import 'package:flutter/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomSmoothPageIndicator extends StatelessWidget {
  const CustomSmoothPageIndicator({super.key, required this.controller});
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: onBoardingData.length,
      effect: CustomizableEffect(
        activeDotDecoration: DotDecoration(
          width: 32,
          height: 12,
          color: AppColors.kPrimaryColor,
          rotationAngle: 180,
          borderRadius: BorderRadius.circular(24),
        ),
        dotDecoration: DotDecoration(
            width: 10,
            height: 10,
            color: AppColors.kGreyColor,
            borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
