import 'package:e_commerce/core/utls/app_strings.dart';
import 'package:e_commerce/core/utls/texts_style.dart';
import 'package:flutter/material.dart';

class SeeAllTextWidget extends StatelessWidget {
  const SeeAllTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        AppStrigns.seeAll,
        style: CustomTextStyle.regular14,
      ),
    );
  }
}
