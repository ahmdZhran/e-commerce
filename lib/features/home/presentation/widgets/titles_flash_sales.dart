import 'package:e_commerce/core/utls/app_assets.dart';
import 'package:e_commerce/core/utls/app_color.dart';
import 'package:e_commerce/core/utls/app_strings.dart';
import 'package:e_commerce/core/utls/texts_style.dart';
import 'package:e_commerce/features/home/presentation/widgets/custom_arrow_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TitlesFlachSalesWidget extends StatelessWidget {
  const TitlesFlachSalesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      const SizedBox(width: 30),
      SvgPicture.asset(
        AppAssets.tap,
        colorFilter: ColorFilter.mode(AppColors.kBlackColor, BlendMode.srcIn),
        height: 30,
        width: 30,
      ),
      const SizedBox(width: 10),
      Column(
        children: [
          const SizedBox(height: 10),
          Text(
            AppStrigns.flachSales,
            style: CustomTextStyle.semiBold16.copyWith(fontSize: 15),
          ),
          const SizedBox(height: 10),
          const Text(AppStrigns.timeLeft)
        ],
      ),
      const SizedBox(width: 100),
      const CustomArrowIcon(),
    ]);
  }
}
