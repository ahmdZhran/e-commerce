import 'package:e_commerce/core/utls/app_strings.dart';
import 'package:e_commerce/core/utls/texts_style.dart';
import 'package:e_commerce/core/widgets/custom_button.dart';
import 'package:e_commerce/features/onboarding/presentaion/widgets/onboarding_images.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatelessWidget {
  OnBoardingView({super.key});
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              const SizedBox(
                height: 90,
              ),
              OnBoardingControllerWidget(
                controller: _controller,
              ),
              const SizedBox(
                height: 90,
              ),
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
              )
            ],
          ),
        ],
      ),
    );
  }
}
