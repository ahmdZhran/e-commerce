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
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSignUpFormWidget extends StatefulWidget {
  const CustomSignUpFormWidget({super.key});

  @override
  State<CustomSignUpFormWidget> createState() => _CustomSignUpFormWidgetState();
}

class _CustomSignUpFormWidgetState extends State<CustomSignUpFormWidget> {
  final TextEditingController nameController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final TextEditingController nationalIdController = TextEditingController();

  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthSuccess) {
          if (state.userModel.status == "success") {
            print("sucess");
            customNavigation(context, '/Sign in');
            print(state.userModel.user!.token);
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
            print('Somethis wrong is happen');
            print(state.userModel.message);
          }
        }
      },
      builder: (context, state) {
        var cubit = AuthCubit.get(context);
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        if (state is AuthLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return Form(
            key: authCubit.singInFormKey,
            child: Column(children: [
              const AddPersonalPhotoWidget(),
              const SizedBox(height: 30),
              CustomTextFomField(
                  controller: nameController,
                  lableText: AppStrigns.fullName,
                  keyboardType: TextInputType.name),
              const SizedBox(height: 16),
              CustomTextFomField(
                  controller: emailController,
                  lableText: AppStrigns.emailAdress,
                  keyboardType: TextInputType.emailAddress),
              const SizedBox(height: 16),
              CustomTextFomField(
                  controller: phoneController,
                  lableText: AppStrigns.phone,
                  keyboardType: TextInputType.phone),
              const SizedBox(height: 16),
              CustomTextFomField(
                  controller: nationalIdController,
                  lableText: AppStrigns.nationalId,
                  keyboardType: TextInputType.number),
              const SizedBox(height: 16),
              CustomTextFomField(
                  controller: passwordController,
                  lableText: AppStrigns.password),
              const SizedBox(height: 20),
              CustomButton(
                onPressed: () {
                  if (authCubit.singInFormKey.currentState!.validate()) {
                    cubit.userRegister(
                      name: nameController.text,
                      email: emailController.text,
                      phone: phoneController.text,
                      nationalId: nationalIdController.text,
                      password: passwordController.text,
                    );

                    print(emailController);
                  }
                },
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
      },
    );
  }
}
