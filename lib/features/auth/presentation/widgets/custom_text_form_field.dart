import 'package:e_commerce/core/utls/app_color.dart';
import 'package:e_commerce/core/utls/texts_style.dart';
import 'package:flutter/material.dart';

class CustomTextFomField extends StatelessWidget {
  const CustomTextFomField(
      {super.key,
      required this.lableText,
      this.onChanged,
      this.keyboardType,
      this.controller,
      this.suffix});
  final String lableText;
  final void Function(String)? onChanged;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final Widget? suffix;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        keyboardType: keyboardType,
        validator: (value) {
          if (value!.isEmpty) {
            return 'this field is required';
          } else {
            return null;
          }
        },
        onChanged: onChanged,
        controller: controller,
        style: TextStyle(color: AppColors.kWhiteColor),
        decoration: InputDecoration(
          suffix: suffix,
          filled: true,
          fillColor: AppColors.kDarkGreyColor,
          enabledBorder: outlineInputBorder(),
          focusedBorder: outlineInputBorder(),
          labelText: lableText,
          labelStyle: CustomTextStyle.regular14,
        ),
      ),
    );
  }
}

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(25),
      borderSide: BorderSide(color: AppColors.kDarkGreyColor));
}
