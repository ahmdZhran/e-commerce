import 'package:e_commerce/core/utls/app_assets.dart';
import 'package:e_commerce/core/utls/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomArrowIcon extends StatelessWidget {
  const CustomArrowIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      AppAssets.arrow,
      colorFilter: ColorFilter.mode(AppColors.kBlackColor, BlendMode.srcIn),
      height: 20,
      width: 20,
    );
  }
}
