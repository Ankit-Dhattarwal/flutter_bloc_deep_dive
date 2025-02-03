
part of 'auth_bloc.dart';

sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class AuthFailure extends AuthState {
  final String errorMessage;

  AuthFailure(this.errorMessage);
}

final class AuthSuccess extends AuthState {
  final String ui;
  AuthSuccess({required this.ui});
}

final class AuthLoading extends AuthState{}