import 'package:e_commerce/core/utls/app_strings.dart';
import 'package:e_commerce/features/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class CustomSigningFormWidget extends StatelessWidget {
  const CustomSigningFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Form(
      child: Column(children: [
        CustomTextFomField(lableText: AppStrigns.fullName),
        SizedBox(height: 12),
        CustomTextFomField(lableText: AppStrigns.emailAdress),
        SizedBox(height: 12),
        CustomTextFomField(lableText: AppStrigns.phone),
        SizedBox(height: 12),
        CustomTextFomField(lableText: AppStrigns.nationalId),
        SizedBox(height: 12),
        CustomTextFomField(lableText: AppStrigns.password),
        SizedBox(height: 15),
      ]),
    );
  }
}
