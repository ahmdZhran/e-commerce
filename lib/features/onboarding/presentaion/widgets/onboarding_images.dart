import 'package:e_commerce/core/utls/app_assets.dart';
import 'package:e_commerce/features/onboarding/data/model/onboading_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnBoardingImagesWidget extends StatelessWidget {
  const OnBoardingImagesWidget(
      {super.key, required this.controller, this.onPageChanged});
  final PageController controller;
  final void Function(int)? onPageChanged;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: controller,
        onPageChanged: onPageChanged,
        itemCount: onBoardingData.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              SizedBox(
                height: 327,
                width: 327,
                child: SvgPicture.asset(
                  AppAssets.imageOnBoarding,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
