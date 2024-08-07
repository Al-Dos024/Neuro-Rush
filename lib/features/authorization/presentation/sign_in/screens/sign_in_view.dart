import 'package:adhd/constants.dart';
import 'package:adhd/features/authorization/presentation/sign_in/widgets/continue_with.dart';
import 'package:adhd/features/authorization/presentation/sign_up/screens/sign_up_view.dart';
import 'package:adhd/features/authorization/presentation/widgets/lable_text_form_field.dart';
import 'package:adhd/features/authorization/presentation/widgets/my_elevated_button%20copy.dart';
import 'package:adhd/features/authorization/presentation/widgets/my_text_button.dart';
import 'package:adhd/features/main/screens/main_view.dart';
import 'package:adhd/features/quiz%20for%20kid/presentation/widgets/show_snackbar.dart';
import 'package:adhd/helper/log_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

bool showpassword = true;

class SigninView extends StatefulWidget {
  const SigninView({super.key});

  @override
  State<SigninView> createState() => _SigninViewState();
}

class _SigninViewState extends State<SigninView> {
  String? email;
  String? password;

  var formKey = GlobalKey<FormState>();

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
                  const SizedBox(
                    height: 35,
                  ),
                  Text(
                    "Let’s sign you in.",
                    style: GoogleFonts.inter(
                      color: kBlackcolor,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Welcome back, You’ve been missed",
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
                    lableText: "Email",
                    hintText: "Enter Email",
                    onChanged: (p0) {
                      email = p0;
                    },
                    inputType: TextInputType.text,
                    obscureText: false,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter email";
                      }
                      return null;
                    },
                  ),
                  CustomLableTextFormField(
                    lableText: "Password",
                    hintText: "Enter Password",
                    inputType: TextInputType.text,
                    obscureText: showpassword,
                    onChanged: (p0) {
                      password = p0;
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter Password";
                      }
                      return null;
                    },
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
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: MyTextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot Password?",
                        style: GoogleFonts.inter(
                          color: kBluecolor_1,
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
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
                            await logIn(email!, password!);

                            showSnackBar(
                                context, "Signing Up Successfully !!!");
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MainView(),
                              ),
                            );
                          } catch (ex) {
                            print(ex);
                            if (ex is FirebaseAuthException) {
                              if (ex.code == 'invalid-login-credentials') {
                                showSnackBar(context, 'User not found');
                              } else if (ex.code == 'invalid-email') {
                                showSnackBar(context, 'Invalid email');
                              } else if (ex.code == 'wrong-password') {
                                showSnackBar(context, 'Wrong password');
                              } else if (ex.code == 'network-request-failed') {
                                showSnackBar(context, 'No internet connection');
                              } else if (ex.code == "invalid-credential") {
                                showSnackBar(
                                    context, "Invalid email or pssword");
                              } else {
                                showSnackBar(context, 'Something went wrong!');
                              }
                            } else {
                              showSnackBar(context, 'Something weong!');
                            }
                          }
                        }
                      },
                      child: Text(
                        "Log in",
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: kWhitecolor,
                        ),
                      ),
                    ),
                  ),
                  const ContinueWith(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "don’t have an account?",
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: kGraycolor_1,
                        ),
                      ),
                      MyTextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignUpView(),
                            ),
                          );
                        },
                        child: Text(
                          " Register now",
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
