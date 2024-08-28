// ignore_for_file: unused_local_variable

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpInitial());
  bool showPassword = true;

  void togglePasswordVisibility() {
    showPassword = !showPassword;
    emit(
      SignUpPasswordVisibilityChanged(showPassword),
    );
  }

  Future<void> registerUser(
    String email,
    String password,
    String name,
    int age,
    int attemptNum,
    int adultattemptNum,
  ) async {
    emit(SignUpLoading());
    try {
      UserCredential user = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

      String id = FirebaseAuth.instance.currentUser!.uid;

      var ref =
          FirebaseDatabase.instance.ref("users/$id").child("Personal Data");
      await ref.set({
        "Name": name,
        "Age": age,
        "Email": email,
        "Attempt Number": attemptNum,
        "Adult Attempt Number": adultattemptNum,
      });

      emit(SignUpSuccess());
    } on FirebaseAuthException catch (ex) {
      if (ex.code == "weak-password") {
        emit(SignUpFailure(errMsg: "Weak password"));
      } else if (ex.code == "email-already-in-use") {
        emit(SignUpFailure(errMsg: "Email already exists"));
      }
    } on FirebaseException catch (e) {
      emit(SignUpFailure(errMsg: 'Unexpected Firebase Error: ${e.message}'));
    } catch (e) {
      emit(SignUpFailure(errMsg: 'Unexpected Error: ${e.toString()}'));
    }
  }
}
