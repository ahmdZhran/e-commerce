import 'package:e_commerce/core/utls/app_assets.dart';
import 'package:e_commerce/core/utls/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CartHeadIcon extends StatelessWidget {
  const CartHeadIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: IconButton(
          icon: SvgPicture.asset(
            AppAssets.cart,
            colorFilter:
                ColorFilter.mode(AppColors.kPrimaryColor, BlendMode.srcIn),
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
