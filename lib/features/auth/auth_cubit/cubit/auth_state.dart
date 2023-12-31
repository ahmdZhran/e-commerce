part of 'auth_cubit.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class RegisterLoading extends AuthState {}

final class RegisterSuccess extends AuthState {
  final UserModel userModel;
  RegisterSuccess(this.userModel);
}

final class RegisterFailer extends AuthState {
  final String errMessage;

  RegisterFailer({required this.errMessage});
}

final class ImageChoosen extends AuthState {}

final class LoginLoading extends AuthState {}

final class LoginSuccess extends AuthState {}

final class LoginFailer extends AuthState {
  final String errMessage;

  LoginFailer({required this.errMessage});
}

final class ObsecurePasswordState extends AuthState {}
