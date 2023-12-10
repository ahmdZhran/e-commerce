import 'package:e_commerce/core/utls/app_strings.dart';
import 'package:e_commerce/core/utls/texts_style.dart';
import 'package:e_commerce/core/widgets/custom_button.dart';
import 'package:e_commerce/features/auth/presentation/widgets/custom_text_form_field.dart';

import 'package:flutter/material.dart';

class FormForSignInWidget extends StatelessWidget {
  const FormForSignInWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const CustomTextFomField(lableText: AppStrigns.emailAdress),
          const SizedBox(height: 40),
          const CustomTextFomField(lableText: AppStrigns.password),
          const SizedBox(height: 40),
          CustomButton(
            onPressed: () {},
            text: Text(
              AppStrigns.login,
              style: CustomTextStyle.semiBold16,
            ),
          ),
          
        ],
      ),
    );
  }
}
class DontHaveAnAccountWidget extends StatelessWidget {
  const DontHaveAnAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text(App)
    ],)
  }
}