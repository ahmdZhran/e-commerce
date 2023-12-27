import 'package:e_commerce/core/utls/app_assets.dart';
import 'package:e_commerce/core/utls/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 16),
        Container(
          height: 180,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.kDarkGreyColor,
          ),
          child: Stack(
            children: [
              Center(
                child: Image.asset(
                  AppAssets.laptop,
                  width: 145,
                  height: 120,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: SvgPicture.asset(
                  AppAssets.heart,
                  height: 24,
                  width: 24,
                  colorFilter: ColorFilter.mode(
                      AppColors.kPrimaryColor, BlendMode.srcIn),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        const SizedBox(
          width: 150,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Lenovo IdeaPad Gaming 3 15ACH6 Laptop',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 8),
              Text(
                '350',
                style: TextStyle(fontSize: 14, color: Colors.green),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
