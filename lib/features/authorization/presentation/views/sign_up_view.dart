// ignore_for_file: use_build_context_synchronously, non_constant_identifier_names

import 'package:adhd/constants.dart';
import 'package:adhd/features/authorization/presentation/views/sign_in_view.dart';
import 'package:adhd/features/authorization/presentation/views/widgets/lable_text_form_field.dart';
import 'package:adhd/features/authorization/presentation/views/widgets/my_elevated_button%20copy.dart';
import 'package:adhd/features/authorization/presentation/views/widgets/my_text_button.dart';
import 'package:adhd/features/quiz%20for%20kid/presentation/widgets/show_snackbar.dart';
import 'package:adhd/generated/l10n.dart';
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
  int AttemptNum = 0;
  late DatabaseReference ref;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
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
                    S.of(context).sign_up_title,
                    style: GoogleFonts.inter(
                      
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    S.of(context).sign_up_subtitle,
                    style: GoogleFonts.inter(
                      color: kGraycolor_1,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomLableTextFormField(
                    lableText: S.of(context).Name,
                    hintText: S.of(context).Enter_name,
                    inputType: TextInputType.text,
                    obscureText: false,
                    onChanged: (p0) {
                      nameSignIn = p0;
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return S.of(context).no_name;
                      }
                      return null;
                    },
                  ),
                  CustomLableTextFormField(
                    lableText: S.of(context).Age,
                    hintText: S.of(context).Enter_Age,
                    inputType: TextInputType.number,
                    obscureText: false,
                    onChanged: (p0) {
                      ageSignIn = p0;
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return S.of(context).no_Age;
                      }
                      return null;
                    },
                  ),
                  CustomLableTextFormField(
                    lableText: S.of(context).email,
                    hintText: S.of(context).Enter_Email,
                    inputType: TextInputType.emailAddress,
                    obscureText: false,
                    onChanged: (p0) {
                      emailSignIn = p0;
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return S.of(context).no_Email;
                      }
                      return null;
                    },
                  ),
                  CustomLableTextFormField(
                    lableText: S.of(context).Password,
                    hintText: S.of(context).Enter_Password,
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
                        return S.of(context).no_Password;
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
                                    email: emailSignIn!,
                                    password: passwordSignIn!);
                            String Id = FirebaseAuth.instance.currentUser!.uid;

                            ref = FirebaseDatabase.instance
                                .ref("users/$Id")
                                .child("Personal Data");
                            showSnackBar(context, title: "", message: "!!");
                            // ignore: unused_local_variable
                            Map<String, dynamic> users = {};
                            ref.set({
                              "Name": nameSignIn,
                              "Age": ageSignIn,
                              "Email": emailSignIn,
                              "Attempt Number": AttemptNum
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
                                  title: S.of(context).snackbar_weak,
                                  message: S.of(context).snackbar_weak_sub);
                            } else if (e.code == "invalid-email") {
                              showSnackBar(context,
                                  title: S.of(context).snackbar_weak,
                                  message: S.of(context).snackbar_inv_sub);
                            } else if (e.code == "email-already-in-use") {
                              showSnackBar(context,
                                  title: S.of(context).snackbar_weak,
                                  message: S.of(context).snackbar_use_sub);
                            } else if (e.code == 'network-request-failed') {
                              showSnackBar(context,
                                  title: S.of(context).snackbar_weak,
                                  message: S.of(context).snackbar_fail_sub);
                            } else {
                              showSnackBar(context,
                                  title: S.of(context).snackbar_weak,
                                  message: S.of(context).snackbar_else_sub);
                            }
                          } catch (e) {
                            showSnackBar(context,
                                title: S.of(context).snackbar_weak,
                                message: S.of(context).snackbar_used_sub);
                          }
                        }
                      },
                      child: Text(
                        S.of(context).Register,
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
                        S.of(context).have_account,
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
                          S.of(context).login_now,
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
