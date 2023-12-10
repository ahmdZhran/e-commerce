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

class CustomSignUpFormWidget extends StatelessWidget {
  const CustomSignUpFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthSuccess) {
          if (state.userModel.status == "success") {
            print(state.userModel.message);
            //show toast to noty success
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
            print(state.userModel.message);
          }
        }
      },
      builder: (context, state) {
        var cubit = AuthCubit.get(context);
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);

        return Form(
          key: authCubit.singInFormKey,
          child: Column(children: [
            const AddPersonalPhotoWidget(),
            const SizedBox(height: 30),
            const CustomTextFomField(
                lableText: AppStrigns.fullName,
                keyboardType: TextInputType.name),
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
              onPressed: () {
                if (authCubit.singInFormKey.currentState!.validate()) {
                  cubit.userRegister(
                    name: authCubit.nameController,
                    email: authCubit.eamilController,
                    phone: authCubit.phoneController,
                    nationalId: authCubit.nationIdController,
                    password: authCubit.passwordController,
                  );
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
      },
    );
  }
}
