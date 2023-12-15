import 'package:e_commerce/core/functions/navigation_method.dart';
import 'package:e_commerce/core/utls/app_assets.dart';
import 'package:e_commerce/core/utls/app_strings.dart';
import 'package:e_commerce/features/auth/presentation/widgets/dont_have_an_account.dart';
import 'package:e_commerce/features/auth/presentation/widgets/custom_form_for_sign_in.dart';
import 'package:e_commerce/features/auth/presentation/widgets/head_titles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(height: 150),
          ),
          SliverToBoxAdapter(
            child: SvgPicture.asset(AppAssets.shopLogo),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 100)),
          const SliverToBoxAdapter(
            child: HeadTitles(text: AppStrigns.wecomeBack),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 40)),
          SliverToBoxAdapter(child: FormForSignInWidget()),
          const SliverToBoxAdapter(child: SizedBox(height: 40)),
          SliverToBoxAdapter(
            child: DontHaveAnAccountWidget(onTap: () {
              customNavigation(context, '/SignUp');
            }),
          )
        ],
      ),
    );
  }
}
