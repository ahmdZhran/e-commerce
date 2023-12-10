import 'package:e_commerce/core/utls/app_strings.dart';
import 'package:e_commerce/core/utls/texts_style.dart';
import 'package:flutter/material.dart';

class HeadTitles extends StatelessWidget {
  const HeadTitles({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
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
