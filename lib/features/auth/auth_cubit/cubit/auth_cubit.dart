import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:dio/dio.dart';
import 'package:e_commerce/core/network/remote/dio_helper.dart';
import 'package:e_commerce/core/utls/constants.dart';
import 'package:e_commerce/features/auth/data/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
part 'auth_state.dart';

// AuthCubit class manages authentication-related logic
class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  final Dio dio = Dio();

  // Form keys for sign up and sign in forms
  GlobalKey<FormState> singUpFormKey = GlobalKey();
  GlobalKey<FormState> singInFormKey = GlobalKey();

  // Boolean to toggle password visibility
  bool showOrHidePassword = true;

  // User model to store user data
  UserModel? userModel;

  // User details variables
  String? name;
  String? email;
  String? phone;
  String? nationalId;
  String? passowrd;

  // Static method to get AuthCubit instance from context
  static AuthCubit get(context) => BlocProvider.of(context);

  // Method to handle user registration
  void userRegister({
    required name,
    required email,
    required phone,
    required nationalId,
    required password,
  }) async {
    emit(RegisterLoading());
    try {
      // Sending registration data to the server
      DioHelperStore.postData(url: ApiConstants.registerApi, data: {
        "name": name,
        "email": email,
        "phone": phone,
        "nationalId": nationalId,
        "gender": "male",
        "password": password,
        "profileImage": userImage,
      }).then((value) {
        // Parsing the response data and emitting success state
        userModel = UserModel.fromJson(value.data);
        print(userModel!.user!.name);
        emit(RegisterSuccess(userModel!));
      }).catchError((error) {
        // Handling errors and emitting failure state
        print(error.toString());
        emit(RegisterFailer(errMessage: error.toString()));
      });
    } catch (error) {
      // Handling unexpected errors and emitting failure state
      emit(RegisterFailer(errMessage: 'Error: $error'));
    }
  }

  // ImagePicker instance for handling image selection
  ImagePicker picker = ImagePicker();
  File? image;
  Uint8List? bytes;
  String? userImage;

  // Method to add an image to the user profile
  Future<void> addImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      // Reading image bytes and encoding to base64
      image = File(pickedFile.path);
      bytes = File(image!.path).readAsBytesSync();
      userImage = base64Encode(bytes!);

      // Emitting image chosen state
      emit(ImageChoosen());
    } else {
      // Logging if no image is selected
      print('no image selected');
    }
  }

  // Method to handle user sign in
  Future<void> signInWithEmailAndPassword(
      {required email, required password}) async {
    try {
      emit(LoginLoading());

      // Sending login data to the server
      final response = await DioHelperStore.postData(
        url: ApiConstants.logInApi,
        data: {"email": email, "password": password},
      );

      // Parsing the response data and emitting success state
      userModel = UserModel.fromJson(response.data);
      emit(LoginSuccess());
    } catch (error) {
      // Handling errors and emitting failure state
      emit(LoginFailer(errMessage: error.toString()));
    }
  }

  // Method to toggle password visibility
  void obsecurePassword() {
    showOrHidePassword = !showOrHidePassword;
    emit(ObsecurePasswordState());
  }
}
