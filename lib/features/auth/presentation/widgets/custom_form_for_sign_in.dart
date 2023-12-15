import 'package:e_commerce/core/utls/app_strings.dart';
import 'package:e_commerce/core/utls/texts_style.dart';
import 'package:e_commerce/core/widgets/custom_button.dart';
import 'package:e_commerce/features/auth/auth_cubit/cubit/auth_cubit.dart';
import 'package:e_commerce/features/auth/presentation/widgets/custom_text_form_field.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FormForSignInWidget extends StatelessWidget {
  FormForSignInWidget({super.key});
  final GlobalKey<FormState> globalKey = GlobalKey();
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var cubit = AuthCubit.get(context);
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        return Form(
          key: authCubit.singInFormKey,
          child: Column(
            children: [
              const CustomTextFomField(lableText: AppStrigns.emailAdress),
              const SizedBox(height: 40),
              const CustomTextFomField(lableText: AppStrigns.password),
              const SizedBox(height: 40),
              CustomButton(
                onPressed: () {
                  if (authCubit.singInFormKey.currentState!.validate()) {}
                },
                text: Text(
                  AppStrigns.login,
                  style: CustomTextStyle.semiBold16,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
