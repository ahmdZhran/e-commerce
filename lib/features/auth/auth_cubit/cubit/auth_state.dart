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
