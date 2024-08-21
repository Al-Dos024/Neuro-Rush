import 'package:adhd/constants.dart';
import 'package:adhd/features/authorization/presentation/views/widgets/continue_with.dart';
import 'package:adhd/features/authorization/presentation/views/sign_up_view.dart';
import 'package:adhd/features/authorization/presentation/views/widgets/lable_text_form_field.dart';
import 'package:adhd/features/authorization/presentation/views/widgets/my_elevated_button%20copy.dart';
import 'package:adhd/features/authorization/presentation/views/widgets/my_text_button.dart';
import 'package:adhd/features/main/presentation/views/main_view.dart';
import 'package:adhd/features/quiz%20for%20kid/presentation/widgets/show_snackbar.dart';
import 'package:adhd/generated/l10n.dart';
import 'package:adhd/main.dart';
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
    bool isDarkMode = MyApp.themeNotifier.value == ThemeMode.dark;
    return Scaffold(
      backgroundColor: isDarkMode ? kBlackcolor_1 : kWhitecolor_2,
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
                    S.of(context).sign_you_title,
                    style: GoogleFonts.inter(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color:  isDarkMode ? kWhitecolor :kBlackcolor,
                    ),
                  ),
                  Text(
                    S.of(context).sign_you_subtitle,
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
                    lableText: S.of(context).email,
                    hintText: S.of(context).Enter_Email,
                    onChanged: (p0) {
                      email = p0;
                    },
                    inputType: TextInputType.text,
                    obscureText: false,
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
                    inputType: TextInputType.text,
                    obscureText: showpassword,
                    onChanged: (p0) {
                      password = p0;
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return S.of(context).no_Password;
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
                        S.of(context).Forgot_Password,
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
                            showSnackBar(context,
                                title: S.of(context).snackbar_suc_log,
                                message: S.of(context).snackbar_suc_log_sub);
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
                                showSnackBar(
                                  context,
                                  title: S.of(context).snackbar_weak,
                                  message: S.of(context).snackbar_no_sub,
                                );
                              } else if (ex.code == 'invalid-email') {
                                showSnackBar(
                                  context,
                                  title: S.of(context).snackbar_weak,
                                  message: S.of(context).snackbar_inv_email_sub,
                                );
                              } else if (ex.code == 'wrong-password') {
                                showSnackBar(context,
                                    title: S.of(context).snackbar_weak,
                                    message:
                                        S.of(context).snackbar_inv_pass_sub);
                              } else if (ex.code == 'network-request-failed') {
                                showSnackBar(
                                  context,
                                  title: S.of(context).snackbar_weak,
                                  message: S.of(context).snackbar_fail_sub,
                                );
                              } else if (ex.code == "invalid-credential") {
                                showSnackBar(
                                  context,
                                  title: S.of(context).snackbar_weak,
                                  message: S.of(context).snackbar_inv_email_sub,
                                );
                              } else {
                                showSnackBar(
                                  context,
                                  title: S.of(context).snackbar_weak,
                                  message: S.of(context).snackbar_else_sub,
                                );
                              }
                            } else {
                              showSnackBar(context,
                                  title: S.of(context).snackbar_weak,
                                  message: S.of(context).snackbar_use_sub);
                            }
                          }
                        }
                      },
                      child: Text(
                        S.of(context).Log_in,
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: kWhitecolor,
                        ),
                      ),
                    ),
                  ),
                  ContinueWith(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        S.of(context).dont_account,
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
                          S.of(context).Register_now,
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
