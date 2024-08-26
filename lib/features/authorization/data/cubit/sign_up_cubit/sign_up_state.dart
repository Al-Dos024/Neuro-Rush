part of 'sign_up_cubit.dart';

sealed class SignUpState {}

final class SignUpInitial extends SignUpState {}

final class SignUpSuccess extends SignUpState {}

final class SignUpLoading extends SignUpState {}

// ignore: must_be_immutable
final class SignUpFailure extends SignUpState {
  String errMsg;
  SignUpFailure({required this.errMsg});
}

class SignUpPasswordVisibilityChanged extends SignUpState {
  final bool showPassword;
  SignUpPasswordVisibilityChanged(this.showPassword);
}
