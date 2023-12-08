import 'package:e_commerce/core/utls/app_color.dart';
import 'package:flutter/material.dart';

abstract class CustomTextStyle {
  static final soraBoldstyleBold = TextStyle(
    fontFamily: "Sora",
    fontSize: 24,
    color: AppColors.kWhiteColor,
    fontWeight: FontWeight.bold,
  );
  static final regular14 = TextStyle(
    fontSize: 14,
    color: AppColors.kGreyColor,
    fontFamily: "Inter",
  );
  static final semiBold16 = TextStyle(
    fontWeight: FontWeight.w700,
    color: AppColors.kBlackColor,
    fontFamily: "Inter",
  );
  static final medium14 = TextStyle(
    fontWeight: FontWeight.w300,
    color: AppColors.kWhiteColor,
    fontFamily: "Inter",
  );
}
