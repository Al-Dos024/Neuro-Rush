// ignore_for_file: unused_local_variable

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpInitial());
  
  Future<void> registerUser(String email, String password) async {
    emit(SignUpLoading());
    try {
      UserCredential user = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      emit(SignUpSuccess());
    } on FirebaseAuthException catch (ex) {
      if (ex.code == "weak-password") {
        emit(SignUpFailure(errMsg: "weak password"));
      } else if (ex.code == "email-already-in-use") {
        emit(SignUpFailure(errMsg: "email already exist"));
      }
    } catch (e) {
      emit(
        SignUpFailure(errMsg: "there was an error pleas try again"),
      );
    }
  }
}
