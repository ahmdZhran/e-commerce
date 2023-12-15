import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:e_commerce/core/network/remote/dio_helper.dart';
import 'package:e_commerce/core/utls/constants.dart';

import 'package:e_commerce/features/auth/data/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:image_picker/image_picker.dart';
import 'package:meta/meta.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  final Dio dio = Dio();
  GlobalKey<FormState> singInFormKey = GlobalKey();
  UserModel? userModel;
  static AuthCubit get(context) => BlocProvider.of(context);
  void userRegister(
      {required name,
      required email,
      required phone,
      required nationalId,
      required password}) async {
    emit(RegisterLoading());
    try {
      DioHelperStore.postData(url: ApiConstants.registerApi, data: {
        "name": name,
        "email": email,
        "phone": phone,
        "nationalId": nationalId,
        "gender": "male",
        "password": password,
        "profileImage": userImage,
      }).then((value) {
        userModel = UserModel.fromJson(value.data);
        print(userModel!.user!.name);
        emit(RegisterSuccess(userModel!));
      }).catchError((error) {
        print(error.toString());
        emit(RegisterFailer(errMessage: error.toString()));
      });
    } catch (error) {
      emit(RegisterFailer(errMessage: 'Error: $error'));
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

  signInWithEmailAndPassword({required email, required password}) {
    try {
      DioHelperStore.postData(url: ApiConstants.logInApi, data: {
        "email": email,
        "password": password,
      }).then((value) {
        userModel = UserModel.fromJson(value.data);
        print(userModel!.user!.name);
        emit(LoginSuccess());
      }).catchError((error) {
        print(error.toString());
        emit(LoginFailer(errMessage: error.toString()));
      });
    } catch (e) {
      emit(LoginFailer(errMessage: e.toString()));
    }
  }
}
