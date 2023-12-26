import 'package:e_commerce/core/utls/app_strings.dart';
import 'package:e_commerce/core/utls/texts_style.dart';
import 'package:flutter/material.dart';

class ElectronicDealsText extends StatelessWidget {
  const ElectronicDealsText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Text(
        AppStrigns.electronicDeals,
        style: CustomTextStyle.medium14
            .copyWith(fontSize: 17, fontWeight: FontWeight.bold),
      ),
    );
  }
}
