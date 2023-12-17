import 'package:e_commerce/core/utls/app_color.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

showToast({required String msg}) {
  Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: AppColors.kGreyColor,
      textColor: Colors.white,
      fontSize: 16.0);
}
