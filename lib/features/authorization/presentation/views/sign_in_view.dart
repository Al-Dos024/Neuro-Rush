import 'package:adhd/constants.dart';
import 'package:adhd/features/authorization/data/cubit/sign_in_cubit/sign_in_cubit.dart';
import 'package:adhd/features/authorization/presentation/views/widgets/continue_with.dart';
import 'package:adhd/features/authorization/presentation/views/sign_up_view.dart';
import 'package:adhd/features/authorization/presentation/views/widgets/lable_text_form_field.dart';
import 'package:adhd/features/authorization/presentation/views/widgets/my_elevated_button%20copy.dart';
import 'package:adhd/features/authorization/presentation/views/widgets/my_text_button.dart';
import 'package:adhd/features/main/presentation/views/main_view.dart';
import 'package:adhd/core/utils/show_snackbar.dart';
import 'package:adhd/generated/l10n.dart';
import 'package:adhd/main.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

bool showpassword = true;
class SigninView extends StatelessWidget {
  GlobalKey<FormState> formKey = GlobalKey();
  String? email;

  String? password;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInCubit, SignInState>(
      listener: (context, state) {
        if (state is SignInLoading) {
          isLoading = true;
        } else if (state is SignInSuccess) {
          showSnackBar(context,
              title: S.of(context).snackbar_suc_log,
              message: S.of(context).snackbar_suc_log_sub);
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const MainView(),
            ),
          );
          isLoading = false;
        } else if (state is SignInFailure) {
          showSnackBar(context, message: "hhhhhhhhh", title: "ggggggggggggggg");
          isLoading = false;
        }
      },
      builder: (context, state) {
        bool isDarkMode = MyApp.themeNotifier.value == ThemeMode.dark;
        return ModalProgressHUD(
          inAsyncCall: isLoading,
          child: Scaffold(
            backgroundColor: isDarkMode ? kBlackcolor_1 : kWhitecolor,
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
                            color: isDarkMode ? kWhitecolor : kBlackcolor,
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
                              BlocProvider.of<SignInCubit>(context).togglePasswordVisibility();
                            },
                            icon: Icon(
                              showpassword
                                  ? Icons.visibility_off
                                  : Icons.visibility,
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
                                BlocProvider.of<SignInCubit>(context).loginUser(
                                    email: email!, password: password!);
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
                        const ContinueWith(),
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
          ),
        );
      },
    );
  }
}
