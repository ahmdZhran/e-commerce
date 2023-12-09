import 'package:e_commerce/core/functions/navigation_method.dart';
import 'package:e_commerce/core/utls/app_strings.dart';
import 'package:e_commerce/core/utls/texts_style.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccountWidget extends StatelessWidget {
  const AlreadyHaveAccountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppStrigns.alreadyHaveAccount,
          style: CustomTextStyle.regular14,
        ),
        const SizedBox(width: 3),
        GestureDetector(
          onTap: () => customNavigation(context, '/SignUp'),
          child: Text(
            AppStrigns.login,
            style: CustomTextStyle.medium14,
          ),
        ),
      ],
    );
  }
}
