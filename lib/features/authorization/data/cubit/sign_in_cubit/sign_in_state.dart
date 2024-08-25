part of 'sign_in_cubit.dart';
sealed class SignInState{}
final class SignInInitial extends SignInState {}
final class SignInSuccess extends SignInState {}
final class SignInLoading extends SignInState {}
// ignore: must_be_immutable
final class SignInFailure extends SignInState {
  String errMsg;
  SignInFailure({required this.errMsg});
}
