import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:e_commerce/core/network/remote/dio_helper.dart';
import 'package:e_commerce/core/utls/constants.dart';
import 'package:e_commerce/features/auth/data/models/user_model.dart';
import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';
import 'package:meta/meta.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  String? emailAddress;
  String? password;
  String? name;
  String? nationalId;
  String? phone;

  GlobalKey<FormState> singInFormKey = GlobalKey();
  UserModel? userModel;
  void userRegister(name, email, phone, nationalId, image, password) {
    DioHelperStore.postData(url: ApiConstants.registerApi, data: {
      "name": name,
      "email": email,
      "phone": phone,
      "profileImage": image,
      "nationalId": nationalId,
      "password": password,
    }).then((value) {
      userModel = UserModel.fromJson(value.data);
      print(userModel!.user!.name!);
      emit(AuthSuccess());
    }).catchError((error) {
      print(error.toString());
      emit(AuthFailer(errMessage: error));
    });
  }

  ImagePicker picker = ImagePicker();
  File? image;
  Uint8List? bytes;
  String? userImage;
  Future<void> addImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      image = File(pickedFile.path);
      bytes = File(image!.path).readAsBytesSync();
      userImage = base64Encode(bytes!);
      print('images = $userImage');
      emit(ImageChoosen());
    } else {
      print('no image selected');
    }
  }
}
