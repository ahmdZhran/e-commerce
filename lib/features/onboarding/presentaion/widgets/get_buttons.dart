import 'package:e_commerce/core/utls/app_strings.dart';
import 'package:e_commerce/core/utls/texts_style.dart';
import 'package:e_commerce/core/widgets/custom_button.dart';
import 'package:e_commerce/features/onboarding/data/model/onboading_data.dart';

import 'package:flutter/material.dart';

class GetButtons extends StatelessWidget {
  const GetButtons({
    super.key,
    required PageController controller,
    required this.currentIndex,
    required this.onPressed,
  }) : _controller = controller;

  final PageController _controller;
  final int currentIndex;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    if (currentIndex == onBoardingData.length - 1) {
      return Column(
        children: [
          CustomButton(
            onPressed: onPressed,
            text: Text(
              AppStrigns.getStarted,
              style: CustomTextStyle.semiBold16,
            ),
          ),
        ],
      );
    } else {
      return CustomButton(
        onPressed: () {
          _controller.nextPage(
              duration: const Duration(milliseconds: 200),
              curve: Curves.bounceIn);
        },
        text: Text(
          AppStrigns.next,
          style: CustomTextStyle.semiBold16,
        ),
      );
    }
  }
}
