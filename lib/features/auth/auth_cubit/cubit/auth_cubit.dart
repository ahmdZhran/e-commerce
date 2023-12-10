import 'package:bloc/bloc.dart';
import 'package:e_commerce/core/network/remote/dio_helper.dart';
import 'package:e_commerce/core/utls/constants.dart';
import 'package:e_commerce/features/auth/data/models/user_model.dart';
import 'package:flutter/material.dart';
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
  void userRegister(name, email, phone, nationalId, password) {
    DioHelperStore.postData(url: ApiConstants.registerApi, data: {
      "name": name,
      "email": email,
      "phone": phone,
      "nationalId": nationalId,
      "password": password,
    }).then((value) {
      userModel = UserModel.fromJson(value.data);
      print(userModel!.user!.name!);
      emit(AuthSuccess());
    });
  }
}
