// ignore_for_file: use_build_context_synchronously, non_constant_identifier_names
import 'package:adhd/constants.dart';
import 'package:adhd/features/authorization/data/cubit/sign_up_cubit/sign_up_cubit.dart';
import 'package:adhd/features/authorization/presentation/views/profile_picture.dart';
import 'package:adhd/features/authorization/presentation/views/widgets/lable_text_form_field.dart';
import 'package:adhd/features/authorization/presentation/views/widgets/my_elevated_button%20copy.dart';
import 'package:adhd/features/authorization/presentation/views/widgets/my_text_button.dart';
import 'package:adhd/core/utils/show_snackbar.dart';
import 'package:adhd/generated/l10n.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../main.dart';

// ignore: must_be_immutable
class SignUpView extends StatelessWidget {
  final GlobalKey<FormState> formKey = GlobalKey();
  bool isLoading = false;
  String? emailSignIn;
  String? passwordSignIn;
  String? ageSignIn;
  String? nameSignIn;

  SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = MyApp.themeNotifier.value == ThemeMode.dark;

    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if (state is SignUpLoading) {
          isLoading = true;
        } else if (state is SignUpSuccess) {
          showSnackBar(
            context,
            title: S.of(context).snackbar_suc,
            message: S.of(context).snackbar_suc_sub,
          );
          print(FirebaseAuth.instance.currentUser!.uid);
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => ProfilePicture(),
            ),
          );
          isLoading = false;
        } else if (state is SignUpFailure) {
          showSnackBar(context, title: "Error", message: state.errMsg);
          isLoading = false;
        }
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: isDarkMode ? kBlackcolor_1 : kWhitecolor,
          body: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: SizedBox(
                height: MediaQuery.sizeOf(context).height,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        S.of(context).sign_up_title,
                        style: GoogleFonts.inter(
                          color: isDarkMode ? kWhitecolor : kBlackcolor,
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
                      const SizedBox(height: 20),
                      CustomLableTextFormField(
                        lableText: S.of(context).Name,
                        hintText: S.of(context).Enter_name,
                        inputType: TextInputType.text,
                        obscureText: false,
                        onChanged: (p0) => nameSignIn = p0,
                        validator: (value) {
                          if (value!.isEmpty) return S.of(context).no_name;
                          return null;
                        },
                      ),
                      CustomLableTextFormField(
                        lableText: S.of(context).Age,
                        hintText: S.of(context).Enter_Age,
                        inputType: TextInputType.number,
                        obscureText: false,
                        onChanged: (p0) => ageSignIn = p0,
                        validator: (value) {
                          if (value!.isEmpty) return S.of(context).no_Age;
                          return null;
                        },
                      ),
                      CustomLableTextFormField(
                        lableText: S.of(context).email,
                        hintText: S.of(context).Enter_Email,
                        inputType: TextInputType.emailAddress,
                        obscureText: false,
                        onChanged: (p0) => emailSignIn = p0,
                        validator: (value) {
                          if (value!.isEmpty) return S.of(context).no_Email;
                          return null;
                        },
                      ),
                      CustomLableTextFormField(
                        lableText: S.of(context).Password,
                        hintText: S.of(context).Enter_Password,
                        inputType: TextInputType.visiblePassword,
                        obscureText:
                            BlocProvider.of<SignUpCubit>(context).showPassword,
                        suffixIcon: IconButton(
                          onPressed: () => BlocProvider.of<SignUpCubit>(context)
                              .togglePasswordVisibility(),
                          icon: Icon(
                            BlocProvider.of<SignUpCubit>(context).showPassword
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: kGraycolor_1,
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) return S.of(context).no_Password;
                          return null;
                        },
                        onChanged: (p0) => passwordSignIn = p0,
                      ),
                      const SizedBox(height: 20),
                      Center(
                        child: MyElevatedButton(
                          borderRadius: BorderRadius.circular(15),
                          color: kBluecolor_1,
                          height: 60,
                          width: 290,
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              context.read<SignUpCubit>().registerUser(
                                  emailSignIn!,
                                  passwordSignIn!,
                                  nameSignIn!,
                                  int.parse(ageSignIn!),
                                  0,
                                  0
                                  // Assuming `AttemptNum` is a counter or starting at 0
                                  );
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
                            onPressed: () => Navigator.pop(context),
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
      },
    );
  }
}
