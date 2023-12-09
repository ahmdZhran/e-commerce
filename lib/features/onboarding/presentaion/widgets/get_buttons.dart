import 'package:e_commerce/core/utls/app_strings.dart';
import 'package:e_commerce/core/utls/texts_style.dart';
import 'package:e_commerce/core/widgets/custom_button.dart';
import 'package:e_commerce/features/onboarding/data/model/onboading_data.dart';
import 'package:flutter/material.dart';

class GetButtons extends StatefulWidget {
  const GetButtons({
    super.key,
    required PageController controller,
  }) : _controller = controller;

  final PageController _controller;

  @override
  State<GetButtons> createState() => _GetButtonsState();
}

class _GetButtonsState extends State<GetButtons> {
  int currentIndix = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        currentIndix == onBoardingData.length - 1
            ? CustomButton(
                onPressed: () {},
                text: Text(
                  AppStrigns.getStarted,
                  style: CustomTextStyle.semiBold16,
                ),
              )
            : CustomButton(
                onPressed: () {
                  widget._controller.nextPage(
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.bounceIn);
                },
                text: Text(
                  AppStrigns.next,
                  style: CustomTextStyle.semiBold16,
                ),
              ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppStrigns.alreadyHaveAccount,
              style: CustomTextStyle.regular14,
            ),
            const SizedBox(width: 3),
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
