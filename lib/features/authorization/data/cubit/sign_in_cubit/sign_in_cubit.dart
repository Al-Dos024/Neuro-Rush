import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit() : super(SignInInitial());
  Future<void> loginUser(
      {required String email, required String password}) async {
    emit(SignInLoading());
    try {
      // ignore: unused_local_variable
      UserCredential user = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      emit(SignInSuccess());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-login-credentials') {
        emit(
          SignInFailure(errMsg: 'user not found'),
         );
      } else if (e.code == 'wrong-password') {
        emit(
          SignInFailure(errMsg: 'wrong password'),
        );
      }
    // ignore: unused_catch_clause
    } on Exception catch (e) {
      emit(
        SignInFailure(errMsg: 'something want wrong'),
      );
    }
  }
}
