import 'package:e_commerce/core/utls/texts_style.dart';
import 'package:e_commerce/features/onboarding/data/model/onboading_data.dart';
import 'package:e_commerce/features/onboarding/presentaion/widgets/cusomt_smooth_page_indicatro.dart';
import 'package:e_commerce/features/onboarding/presentaion/widgets/onboarding_images.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatelessWidget {
  OnBoardingView({super.key});
  final PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 90,
          ),
          OnBoardingControllerWidget(
            controller: controller,
          ),
          const SizedBox(
            height: 90,
          ),
        ],
      ),
    );
  }
}

// class CustomTitlesOnBoardingWidget extends StatelessWidget {
//   const CustomTitlesOnBoardingWidget(
//       {super.key, required this.controller, this.onPageChanged});
//   final PageController controller;
//   final void Function(int)? onPageChanged;
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 140,
//       width: 410,
//       child: PageView.builder(
//         controller: controller,
//         onPageChanged: onPageChanged,
//         itemCount: onBoardingData.length,
//         itemBuilder: (context, index) {
//           return 
//           );
//         },
//       ),
//     );
//   }
// }
