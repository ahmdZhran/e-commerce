import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:e_commerce/core/database/cache_helper.dart';
import 'package:e_commerce/core/functions/navigation_method.dart';
import 'package:e_commerce/core/utls/app_strings.dart';
import 'package:e_commerce/core/utls/texts_style.dart';
import 'package:e_commerce/core/utls/values.dart';
import 'package:e_commerce/core/widgets/custom_button.dart';
import 'package:e_commerce/features/auth/auth_cubit/cubit/auth_cubit.dart';
import 'package:e_commerce/features/auth/presentation/widgets/add_personal_photo.dart';
import 'package:e_commerce/features/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:e_commerce/features/onboarding/presentaion/widgets/already_have_account.dart';

class CustomSignUpFormWidget extends StatelessWidget {
  // Constructor with a key
  const CustomSignUpFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        // Handle state changes
        if (state is RegisterSuccess) {
          if (state.userModel.status == "success") {
            // Successful registration
            print("success");
            customNavigation(context, '/Sign in');
            print(state.userModel.user!.token);

            // Save user data to cache
            CacheHelper()
                .saveData(
                    key: 'userId', value: state.userModel.user!.nationalId)
                .then((value) {
              nationlId = state.userModel.user!.nationalId;
            });
            CacheHelper()
                .saveData(key: 'token', value: state.userModel.user!.token)
                .then((value) {
              token = state.userModel.user!.token!;
              customNavigation(context, '/SignIn');
            });
          } else {
            // Registration failed
            print(state.userModel.message);
          }
        }
      },
      builder: (context, state) {
        // Get the AuthCubit instance
        var cubit = AuthCubit.get(context);
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);

        // Build the UI using a Form
        return Form(
          key: authCubit.singUpFormKey, // Form key
          child: Column(children: [
            const AddPersonalPhotoWidget(),
            const SizedBox(height: 30),

            // CustomTextFormField for full name
            CustomTextFomField(
                onChanged: (name) {
                  authCubit.name = name;
                },
                lableText: AppStrigns.fullName,
                keyboardType: TextInputType.name),
            const SizedBox(height: 16),

            // CustomTextFormField for email
            CustomTextFomField(
                onChanged: (email) {
                  authCubit.email = email;
                },
                lableText: AppStrigns.emailAdress,
                keyboardType: TextInputType.emailAddress),
            const SizedBox(height: 16),

            // CustomTextFormField for phone
            CustomTextFomField(
                onChanged: (phone) {
                  authCubit.phone = phone;
                },
                lableText: AppStrigns.phone,
                keyboardType: TextInputType.phone),
            const SizedBox(height: 16),

            // CustomTextFormField for national ID
            CustomTextFomField(
                onChanged: (nationId) {
                  authCubit.nationalId = nationId;
                },
                lableText: AppStrigns.nationalId,
                keyboardType: TextInputType.number),
            const SizedBox(height: 16),

            // CustomTextFormField for password
            CustomTextFomField(
                onChanged: (password) {
                  authCubit.passowrd = password;
                },
                obscureText: authCubit.showOrHidePassword,
                suffix: IconButton(
                  icon: authCubit.showOrHidePassword == false
                      ? const Icon(Icons.visibility_outlined)
                      : const Icon(Icons.visibility_off),
                  onPressed: () => authCubit.obsecurePassword(),
                ),
                lableText: AppStrigns.password),
            const SizedBox(height: 20),

            // Show a loading indicator if the registration is in progress
            state is RegisterLoading
                ? const CircularProgressIndicator()
                // CustomButton for sign up
                : CustomButton(
                    onPressed: () {
                      // Validate the form and trigger userRegister
                      if (authCubit.singUpFormKey.currentState!.validate()) {
                        cubit.userRegister(
                          name: authCubit.name,
                          email: authCubit.email,
                          phone: authCubit.phone,
                          nationalId: authCubit.nationalId,
                          password: authCubit.passowrd,
                        );
                      }
                    },
                    text: Text(
                      AppStrigns.signUp,
                      style: CustomTextStyle.semiBold16,
                    ),
                  ),
            const SizedBox(height: 20),

            // AlreadyHaveAccountWidget for navigation to sign in
            AlreadyHaveAccountWidget(onTap: () {
              customNavigation(context, '/SignIn');
            })
          ]),
        );
      },
    );
  }
}
