import 'package:e_commerce/core/utls/app_strings.dart';
import 'package:e_commerce/core/utls/texts_style.dart';
import 'package:flutter/material.dart';

class HeadTitlesOfRegisterView extends StatelessWidget {
  const HeadTitlesOfRegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          AppStrigns.getStarted,
          style: CustomTextStyle.soraBoldstyleBold,
        ),
        Text(
          AppStrigns.enterYourDetailsBelow,
          style: CustomTextStyle.regular14,
        )
      ],
    );
  }
}
