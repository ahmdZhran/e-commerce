import 'package:e_commerce/features/auth/auth_cubit/cubit/auth_cubit.dart';
import 'package:e_commerce/features/auth/presentation/view/sign_in_view.dart';
import 'package:e_commerce/features/auth/presentation/view/sing_up._view.dart';
import 'package:e_commerce/features/home/presentation/view/home_view.dart';
import 'package:e_commerce/features/home/presentation/widgets/custom_navigation_bar.dart';
import 'package:e_commerce/features/onboarding/presentaion/views/onboarding_view.dart';
import 'package:e_commerce/features/products/presentation/views/products_view.dart';
import 'package:e_commerce/features/splsh/presentation/views/splsh_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplshView(),
    ),
    GoRoute(
      path: '/onBoarding',
      builder: (context, state) => const OnBoardingView(),
    ),
    GoRoute(
      path: '/SignUp',
      builder: (context, state) => BlocProvider(
        create: (context) => AuthCubit(),
        child: const SignUpViwe(),
      ),
    ),
    GoRoute(
      path: '/SignIn',
      builder: (context, state) => BlocProvider(
        create: (context) => AuthCubit(),
        child: const SignInView(),
      ),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: '/navigationBar',
      builder: (context, state) => const HomeNavBarWidget(),
    ),
    GoRoute(
      path: '/products',
      builder: (context, state) => const ProductsView(),
    ),
  ],
);
