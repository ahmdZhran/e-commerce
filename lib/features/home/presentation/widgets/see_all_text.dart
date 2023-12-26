import 'package:e_commerce/core/utls/app_strings.dart';
import 'package:e_commerce/core/utls/texts_style.dart';
import 'package:flutter/material.dart';

class SeeAllText extends StatelessWidget {
  const SeeAllText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      AppStrigns.seeAll,
      style: CustomTextStyle.regular14,
    );
  }
}
