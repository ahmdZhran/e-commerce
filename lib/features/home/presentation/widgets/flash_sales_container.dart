import 'package:e_commerce/core/utls/app_color.dart';
import 'package:e_commerce/features/home/presentation/widgets/titles_flash_sales.dart';
import 'package:flutter/material.dart';

class FlachSalesContainer extends StatelessWidget {
  const FlachSalesContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: Container(
        width: double.infinity,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: AppColors.kPrimaryColor,
        ),
        child: const TitlesFlachSalesWidget(),
      ),
    );
  }
}
