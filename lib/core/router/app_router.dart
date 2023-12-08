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
      path: 'onBoarding',
      builder: (context, state) => const OnBoardingView(),
    ),
  ],
);
