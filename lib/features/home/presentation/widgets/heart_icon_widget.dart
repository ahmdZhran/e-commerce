import 'package:e_commerce/core/utls/app_assets.dart';
import 'package:e_commerce/core/utls/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HeartIconWidget extends StatelessWidget {
  const HeartIconWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SvgPicture.asset(
        AppAssets.heart,
        height: 24,
        width: 24,
        colorFilter: ColorFilter.mode(
          AppColors.kPrimaryColor,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
