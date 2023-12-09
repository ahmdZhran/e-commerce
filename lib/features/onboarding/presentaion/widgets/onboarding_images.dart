import 'package:e_commerce/core/utls/app_assets.dart';
import 'package:e_commerce/features/onboarding/data/model/onboading_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnBoardingImages extends StatelessWidget {
  const OnBoardingImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
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
