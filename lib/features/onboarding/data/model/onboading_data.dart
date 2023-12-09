import 'package:e_commerce/core/utls/app_assets.dart';
import 'package:e_commerce/core/utls/app_strings.dart';

class OnBoardingData {
  final String image;
  final String title;
  final String subTitle;

  OnBoardingData(
      {required this.image, required this.title, required this.subTitle});
}

List<OnBoardingData> onBoardingData = [
  OnBoardingData(
    image: AppAssets.imageOnBoarding,
    title: AppStrigns.titleOfOnBoarding,
    subTitle: AppStrigns.subtitleOfOnBoarding,
  ),
  OnBoardingData(
    image: AppAssets.imageOnBoarding1,
    title: AppStrigns.titleOfOnBoarding1,
    subTitle: AppStrigns.subtitleOfOnBoarding1,
  ),
  OnBoardingData(
    image: AppAssets.imageOnBoarding2,
    title: AppStrigns.titleOfOnBoarding2,
    subTitle: AppStrigns.subtitleOfOnboarding2,
  ),
];
