import 'package:e_commerce/core/utls/app_strings.dart';
import 'package:e_commerce/core/utls/texts_style.dart';
import 'package:flutter/material.dart';

class DontHaveAnAccountWidget extends StatelessWidget {
  const DontHaveAnAccountWidget({super.key, this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppStrigns.dontHaveAnAccount,
          style: CustomTextStyle.regular14,
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(
            AppStrigns.signUp,
            style: CustomTextStyle.medium14,
          ),
        )
      ],
    );
  }
}
