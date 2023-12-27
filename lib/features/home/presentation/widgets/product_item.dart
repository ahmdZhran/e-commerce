import 'package:e_commerce/core/utls/app_assets.dart';
import 'package:e_commerce/core/utls/app_color.dart';
import 'package:e_commerce/core/utls/texts_style.dart';
import 'package:e_commerce/features/home/presentation/widgets/heart_icon_widget.dart';
import 'package:flutter/material.dart';

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
          width: 170,
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
              const Positioned(
                top: 0,
                right: 0,
                child: HeartIconWidget(),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        SizedBox(
          width: 170,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Lenovo IdeaPad Gaming 3 15ACH6 Laptop',
                style: CustomTextStyle.medium14,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 8),
              Text(
                '350',
                style: TextStyle(fontSize: 14, color: AppColors.kPrimaryColor),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
