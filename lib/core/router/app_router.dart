import 'package:e_commerce/features/auth/presentation/view/sing_up._view.dart';
import 'package:e_commerce/features/onboarding/presentaion/views/onboarding_view.dart';
import 'package:e_commerce/features/splsh/presentation/views/splsh_view.dart';

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
      builder: (context, state) => const SignUpViwe(),
    )
  ],
);
