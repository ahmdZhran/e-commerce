import 'package:e_commerce/core/functions/custom_toast.dart';
import 'package:e_commerce/core/functions/navigation_method.dart';
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
        if (state is LoginSuccess) {
          showToast(msg: 'logged in success');
          customNavigation(context, '/home');
        }
      },
      builder: (context, state) {
        var cubit = AuthCubit.get(context);
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        if (state is LoginLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return Form(
            key: authCubit.singInFormKey,
            child: Column(
              children: [
                CustomTextFomField(
                    controller: emailController,
                    lableText: AppStrigns.emailAdress),
                const SizedBox(height: 40),
                CustomTextFomField(
                    controller: passwordController,
                    lableText: AppStrigns.password),
                const SizedBox(height: 40),
                CustomButton(
                  onPressed: () {
                    if (authCubit.singInFormKey.currentState!.validate()) {
                      cubit.signInWithEmailAndPassword(
                        email: emailController.text,
                        password: passwordController.text,
                      );
                    }
                  },
                  text: Text(
                    AppStrigns.login,
                    style: CustomTextStyle.semiBold16,
                  ),
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
