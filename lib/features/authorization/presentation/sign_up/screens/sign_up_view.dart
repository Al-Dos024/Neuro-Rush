// ignore_for_file: use_build_context_synchronously, non_constant_identifier_names

import 'package:adhd/constants.dart';
import 'package:adhd/features/authorization/presentation/sign_in/screens/sign_in_view.dart';
import 'package:adhd/features/authorization/presentation/widgets/lable_text_form_field.dart';
import 'package:adhd/features/authorization/presentation/widgets/my_elevated_button%20copy.dart';
import 'package:adhd/features/authorization/presentation/widgets/my_text_button.dart';
import 'package:adhd/features/quiz%20for%20kid/presentation/widgets/show_snackbar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  GlobalKey<FormState> formKey = GlobalKey();
  bool isLoading = false;
  String? emailSignIn;
  String? passwordSignIn;
  String? ageSignIn;
  String? nameSignIn;
  late DatabaseReference ref;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhitecolor,
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.sizeOf(context).height,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Let’s sign you up.",
                    style: GoogleFonts.inter(
                      color: kBlackcolor,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Be with our family",
                    style: GoogleFonts.inter(
                      color: kGraycolor_1,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomLableTextFormField(
                    lableText: "Name",
                    hintText: "Enter your name",
                    inputType: TextInputType.text,
                    obscureText: false,
                    onChanged: (p0) {
                      nameSignIn = p0;
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter name";
                      }
                      return null;
                    },
                  ),
                  CustomLableTextFormField(
                    lableText: "Age",
                    hintText: "Enter your age",
                    inputType: TextInputType.number,
                    obscureText: false,
                    onChanged: (p0) {
                      ageSignIn = p0;
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter age";
                      }
                      return null;
                    },
                  ),
                  CustomLableTextFormField(
                    lableText: "Email",
                    hintText: "Enter your email",
                    inputType: TextInputType.emailAddress,
                    obscureText: false,
                    onChanged: (p0) {
                      emailSignIn = p0;
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter E-mail";
                      }
                      return null;
                    },
                  ),
                  CustomLableTextFormField(
                    lableText: "Password",
                    hintText: "Enter your password",
                    inputType: TextInputType.visiblePassword,
                    obscureText: showpassword,
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          showpassword = !showpassword;
                        });
                      },
                      icon: Icon(
                        showpassword ? Icons.visibility_off : Icons.visibility,
                        color: kGraycolor_1,
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter password";
                      }
                      return null;
                    },
                    onChanged: (p0) {
                      passwordSignIn = p0;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: MyElevatedButton(
                      borderRadius: BorderRadius.circular(15),
                      color: kBluecolor_1,
                      height: 60,
                      width: 290,
                      onPressed: () async {
                        if (formKey.currentState!.validate()) {
                          try {
                            // ignore: unused_local_variable
                            UserCredential user = await FirebaseAuth.instance
                                .createUserWithEmailAndPassword(
                                    email: emailSignIn!, password: passwordSignIn!);
                            String Id = FirebaseAuth.instance.currentUser!.uid;
                          
                            ref = FirebaseDatabase.instance.ref("users/$Id");
                            showSnackBar(context, "Signing Up Successfully !!!");
                            // ignore: unused_local_variable
                            Map<String, dynamic> users = {};
                            ref.set({
                              "name": nameSignIn,
                              "age": ageSignIn,
                            });
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SigninView(),
                              ),
                            );
                          } on FirebaseException catch (e) {
                            if (e.code == "weak-password") {
                              showSnackBar(context,
                                  "Password should be at least 6 characters");
                            } else if (e.code == "invalid-email") {
                              showSnackBar(
                                  context, "The email address is badly formatted.");
                            } else if (e.code == "email-already-in-use") {
                              showSnackBar(context, "email already in use");
                            } else if (e.code == 'network-request-failed') {
                              showSnackBar(context, 'No internet connection');
                            } else {
                              showSnackBar(context, "An undefined Error happened.");
                            }
                          } catch (e) {
                            showSnackBar(context, "error");
                          }
                        } 
                      },
                      child: Text(
                        "Register",
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: kWhitecolor,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "have an account ?",
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: kGraycolor_1,
                        ),
                      ),
                      MyTextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          " Login now",
                          style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: kBluecolor_1,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
