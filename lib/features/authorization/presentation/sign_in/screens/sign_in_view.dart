import 'package:adhd/constants.dart';
import 'package:adhd/features/authorization/presentation/sign_in/widgets/continue_with.dart';
import 'package:adhd/features/authorization/presentation/sign_up/screens/sign_up_view.dart';
import 'package:adhd/features/authorization/presentation/widgets/lable_text_form_field.dart';
import 'package:adhd/features/authorization/presentation/widgets/my_elevated_button%20copy.dart';
import 'package:adhd/features/authorization/presentation/widgets/my_text_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhitecolor,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 35,),
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
            const CustomLableTextFormField(
              lableText: "Email",
              hintText: "Enter Email",
              inputType: TextInputType.text,
              obscureText: false,
            ),
            const CustomLableTextFormField(
              lableText: "Password",
              hintText: "Enter Password",
              inputType: TextInputType.text,
              obscureText: true,
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
                onPressed: () {},
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
                    Navigator.pushReplacement(
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
    );
  }
}
