import 'package:e_commerce/core/utls/app_strings.dart';
import 'package:e_commerce/core/utls/texts_style.dart';
import 'package:e_commerce/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class GetButtons extends StatelessWidget {
  const GetButtons({
    super.key,
    required PageController controller,
  }) : _controller = controller;

  final PageController _controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomButton(
          onPressed: () {
            _controller.nextPage(
                duration: const Duration(milliseconds: 200),
                curve: Curves.bounceIn);
          },
          text: Text(
            AppStrigns.next,
            style: CustomTextStyle.semiBold16,
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppStrigns.alreadyHaveAccount,
              style: CustomTextStyle.regular14,
            ),
            Text(
              AppStrigns.login,
              style: CustomTextStyle.medium14,
            ),
          ],
        ),
      ],
    );
  }
}
