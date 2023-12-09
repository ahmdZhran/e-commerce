import 'package:e_commerce/features/onboarding/presentaion/function/onboarding_visited.dart';
import 'package:e_commerce/features/onboarding/presentaion/widgets/already_have_account.dart';
import 'package:e_commerce/features/onboarding/presentaion/widgets/get_buttons.dart';
import 'package:e_commerce/features/onboarding/presentaion/widgets/onboarding_images.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final PageController _controller = PageController(initialPage: 0);
  int currenIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              const SizedBox(
                height: 90,
              ),
              OnBoardingControllerWidget(
                onPageChanged: (index) {
                  setState(() {});
                  currenIndex = index;
                },
                controller: _controller,
              ),
              const SizedBox(
                height: 20,
              ),
              GetButtons(
                controller: _controller,
                currentIndex: currenIndex,
                onPressed: () {
                  _controller.nextPage(
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.bounceIn);
                  onBoardingVisited();
                },
              ),
              const SizedBox(height: 30),
              const AlreadyHaveAccountWidget()
            ],
          ),
        ],
      ),
    );
  }
}
