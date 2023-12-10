import 'package:e_commerce/core/utls/app_color.dart';
import 'package:e_commerce/core/utls/texts_style.dart';
import 'package:flutter/material.dart';

class CustomTextFomField extends StatelessWidget {
  const CustomTextFomField(
      {super.key, required this.lableText, this.onChanged});
  final String lableText;
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return 'this field is required';
        } else {
          return null;
        }
      },
      onChanged: onChanged,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.kDarkGreyColor,
        enabledBorder: outlineInputBorder(),
        focusedBorder: outlineInputBorder(),
        labelText: lableText,
        labelStyle: CustomTextStyle.regular14.copyWith(fontSize: 20),
      ),
    );
  }
}

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(4),
  );
}
