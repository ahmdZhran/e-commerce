import 'package:e_commerce/core/utls/texts_style.dart';
import 'package:e_commerce/features/onboarding/data/model/onboading_data.dart';
import 'package:e_commerce/features/onboarding/presentaion/widgets/cusomt_smooth_page_indicatro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnBoardingControllerWidget extends StatelessWidget {
  const OnBoardingControllerWidget(
      {super.key, required PageController controller, this.onPageChanged})
      : _controller = controller;
  final PageController _controller;
  final void Function(int)? onPageChanged;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 600,
        width: 410,
        child: PageView.builder(
          controller: _controller,
          onPageChanged: onPageChanged,
          itemCount: onBoardingData.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                SvgPicture.asset(
                  onBoardingData[index].image,
                ),
                const SizedBox(
                  height: 90,
                ),
                CustomSmoothPageIndicator(controller: _controller),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    children: [
                      Text(
                        onBoardingData[index].title,
                        style: CustomTextStyle.soraBoldstyleBold,
                        maxLines: 1,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        onBoardingData[index].subTitle,
                        style: CustomTextStyle.regular14,
                        maxLines: 2,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
