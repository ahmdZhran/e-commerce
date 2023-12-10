import 'package:e_commerce/core/functions/navigation_method.dart';
import 'package:e_commerce/core/utls/app_strings.dart';
import 'package:e_commerce/core/utls/texts_style.dart';
import 'package:e_commerce/core/widgets/custom_button.dart';
import 'package:e_commerce/features/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:e_commerce/features/onboarding/presentaion/widgets/already_have_account.dart';
import 'package:flutter/material.dart';

class CustomSigningFormWidget extends StatelessWidget {
  const CustomSigningFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(children: [
        const CustomTextFomField(
            lableText: AppStrigns.fullName, keyboardType: TextInputType.name),
        const SizedBox(height: 16),
        const CustomTextFomField(
            lableText: AppStrigns.emailAdress,
            keyboardType: TextInputType.emailAddress),
        const SizedBox(height: 16),
        const CustomTextFomField(
            lableText: AppStrigns.phone, keyboardType: TextInputType.phone),
        const SizedBox(height: 16),
        const CustomTextFomField(
            lableText: AppStrigns.nationalId,
            keyboardType: TextInputType.number),
        const SizedBox(height: 16),
        const CustomTextFomField(lableText: AppStrigns.password),
        const SizedBox(height: 20),
        CustomButton(
          onPressed: () {},
          text: Text(
            AppStrigns.signUp,
            style: CustomTextStyle.semiBold16,
          ),
        ),
        const SizedBox(height: 20),
        AlreadyHaveAccountWidget(onTap: () {
          customNavigation(context, '/SignIn');
        })
      ]),
    );
  }
}
