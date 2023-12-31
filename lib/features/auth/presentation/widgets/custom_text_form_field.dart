import 'package:e_commerce/core/utls/app_color.dart';
import 'package:e_commerce/core/utls/texts_style.dart';
import 'package:flutter/material.dart';

class CustomTextFomField extends StatelessWidget {
  const CustomTextFomField({
    super.key,
    required this.lableText,
    this.onChanged,
    this.keyboardType,
    this.suffix,
    this.obscureText = false,
  });
  final String lableText;
  final void Function(String)? onChanged;
  final TextInputType? keyboardType;
  final Widget? suffix;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        obscureText: obscureText,
        keyboardType: keyboardType,
        validator: (value) {
          if (value!.isEmpty) {
            return 'this field is required';
          } else {
            return null;
          }
        },
        onChanged: onChanged,
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
