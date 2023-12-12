import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';

import 'package:e_commerce/features/auth/data/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:image_picker/image_picker.dart';
import 'package:meta/meta.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  final Dio dio = Dio();
  String? name;
  String? emailAdress;
  String? phone;
  String? nationalId;
  String? password;

  GlobalKey<FormState> singInFormKey = GlobalKey();
  UserModel? userModel;
  static AuthCubit get(context) => BlocProvider.of(context);
  void userRegister(
      {required name,
      required email,
      required phone,
      required nationalId,
      required password}) async {
    emit(AuthLoading());
    try {
      const String registerUrl = 'https://elwekala.onrender.com/user/register';

      Map<String, dynamic> data = {
        "email": email,
        "phone": phone,
        "nationalId": nationalId,
        "gender": 'male',
        "password": password,
        "profileImage": userImage,
      };
      Response response = await dio.post(registerUrl, data: data);

      if (response.statusCode == 200) {
        emit(AuthSuccess(userModel!));
      } else {
        emit(AuthFailer(errMessage: 'Registration failed. Please try again.'));
      }
    } catch (error) {
      emit(AuthFailer(errMessage: 'Error: $error'));
    }
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
