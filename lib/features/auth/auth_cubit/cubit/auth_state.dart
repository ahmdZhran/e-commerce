part of 'auth_cubit.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class AuthLoading extends AuthState {}

final class AuthSuccess extends AuthState {
  final userModel;
  AuthSuccess(this.userModel);
}

final class ImageChoosen extends AuthState {}

final class AuthFailer extends AuthState {
  final String errMessage;

  AuthFailer({required this.errMessage});
}
