import 'package:e_commerce/core/utls/app_assets.dart';
import 'package:e_commerce/core/utls/app_strings.dart';

import 'package:e_commerce/features/auth/presentation/widgets/form_for_sign_in.dart';
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
          const SliverToBoxAdapter(child: FormForSignInWidget()),
        ],
      ),
    );
  }
}
