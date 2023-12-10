import 'package:e_commerce/core/utls/app_strings.dart';
import 'package:flutter/material.dart';

class DontHaveAnAccountWidget extends StatelessWidget {
  const DontHaveAnAccountWidget({super.key, this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          AppStrigns.dontHaveAnAccount,
        ),
        GestureDetector(
          onTap: onTap,
          child: const Text(
            AppStrigns.signUp,
          ),
        )
      ],
    );
  }
}
