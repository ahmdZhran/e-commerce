import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:e_commerce/core/functions/custom_toast.dart';
import 'package:e_commerce/core/functions/navigation_method.dart';
import 'package:e_commerce/core/utls/app_strings.dart';
import 'package:e_commerce/core/utls/texts_style.dart';
import 'package:e_commerce/core/widgets/custom_button.dart';
import 'package:e_commerce/features/auth/auth_cubit/cubit/auth_cubit.dart';
import 'package:e_commerce/features/auth/presentation/widgets/custom_text_form_field.dart';

class FormForSignInWidget extends StatelessWidget {
  // Constructor with a key
  FormForSignInWidget({super.key});

  // GlobalKey for the form
  final GlobalKey<FormState> globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        // Handle state changes
        if (state is LoginSuccess) {
          // Show a success toast and navigate to home
          showToast(msg: 'logged in success');
          customReplacementNavigation(context, '/home');
        } else if (state is LoginFailer) {
          // Show an error toast if login fails
          showToast(msg: state.errMessage);
        }
      },
      builder: (context, state) {
        // Get the AuthCubit instance
        var cubit = AuthCubit.get(context);
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);

        // Build the UI using a Form
        return Form(
          key: authCubit.singInFormKey, // Form key
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
                        if (authCubit.singInFormKey.currentState!.validate()) {
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
      },
    );
  }
}
