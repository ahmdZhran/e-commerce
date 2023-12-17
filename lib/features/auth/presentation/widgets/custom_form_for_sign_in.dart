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

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          showToast(msg: 'logged in success');
          customReplacementNavigation(context, '/home');
        } else if (state is LoginFailer) {
          showToast(msg: state.errMessage);
        }
      },
      builder: (context, state) {
        var cubit = AuthCubit.get(context);
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        {
          return Form(
            key: authCubit.singInFormKey,
            child: Column(
              children: [
                CustomTextFomField(
                    onChanged: (email) {
                      authCubit.email = email;
                    },
                    lableText: AppStrigns.emailAdress),
                const SizedBox(height: 40),
                CustomTextFomField(
                    onChanged: (password) {
                      authCubit.passowrd = password;
                    },
                    obscureText: authCubit.showOrHidePassword,
                    suffix: IconButton(
                        onPressed: () {
                          authCubit.obsecurePassword();
                        },
                        icon: authCubit.showOrHidePassword == false
                            ? const Icon(
                                Icons.visibility_outlined,
                              )
                            : const Icon(
                                Icons.visibility_off,
                              )),
                    lableText: AppStrigns.password),
                const SizedBox(height: 40),
                state is LoginLoading
                    ? const CircularProgressIndicator()
                    : CustomButton(
                        onPressed: () {
                          if (authCubit.singInFormKey.currentState!
                              .validate()) {
                            cubit.signInWithEmailAndPassword(
                              email: authCubit.email,
                              password: authCubit.passowrd,
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
