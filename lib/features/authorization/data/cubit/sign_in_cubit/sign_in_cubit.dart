import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit() : super(SignInInitial());
  bool showPassword = true;

  void togglePasswordVisibility() {
    showPassword = !showPassword;
    emit(
      SignInPasswordVisibilityChanged(showPassword),
    );
  }

  Future<void> loginUser(
      {required String email, required String password}) async {
    emit(SignInLoading());
    try {
      // ignore: unused_local_variable
      UserCredential user = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      emit(SignInSuccess());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(
          SignInFailure(errMsg: 'user-not-found'),
        );
      } else if (e.code == 'invalid-email') {
        emit(
          SignInFailure(errMsg: "invalid-email"),
        );
      } else if (e.code == 'network-request-failed') {
        emit(
          SignInFailure(errMsg: "network-request-failed"),
        );
      } else if (e.code == 'wrong-password') {
        emit(
          SignInFailure(errMsg: 'wrong-password'),
        );
      }
    } on FirebaseException catch (_) {
      emit(SignInFailure(errMsg: 'Unexpected-Firebase-Error'));
    } on Exception catch (_) {
      emit(
        SignInFailure(errMsg: 'something-went-wrong'),
      );
    }
  }
}
