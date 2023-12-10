import 'package:e_commerce/core/utls/app_color.dart';
import 'package:flutter/material.dart';

class AddPersonalPhotoWidget extends StatelessWidget {
  const AddPersonalPhotoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.add_a_photo,
      color: AppColors.kPrimaryColor,
    );
  }
}
