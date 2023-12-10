import 'package:e_commerce/core/utls/app_strings.dart';
import 'package:e_commerce/features/auth/presentation/widgets/add_personal_photo.dart';
import 'package:e_commerce/features/auth/presentation/widgets/custom_form_for_signupwidget.dart';
import 'package:e_commerce/features/auth/presentation/widgets/head_titles.dart';
import 'package:flutter/material.dart';

class SignUpViwe extends StatelessWidget {
  const SignUpViwe({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 100,
            ),
          ),
          SliverToBoxAdapter(
            child: HeadTitles(text: AppStrigns.getStarted),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 80,
            ),
          ),
          SliverToBoxAdapter(
            child: CustomSigningFormWidget(),
          ),
        ],
      ),
    );
  }
}
