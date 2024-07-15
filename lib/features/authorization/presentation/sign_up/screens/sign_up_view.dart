import 'package:adhd/constants.dart';
import 'package:adhd/features/authorization/presentation/widgets/lable_text_form_field.dart';
import 'package:adhd/features/authorization/presentation/widgets/my_elevated_button%20copy.dart';
import 'package:adhd/features/authorization/presentation/widgets/my_text_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

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
            const CustomLableTextFormField(
              lableText: "Name",
              hintText: "Enter your name",
              inputType: TextInputType.text,
              obscureText: false,
            ),
            const CustomLableTextFormField(
              lableText: "Age",
              hintText: "Enter your age",
              inputType: TextInputType.number,
              obscureText: false,
            ),
            const CustomLableTextFormField(
              lableText: "Email",
              hintText: "Enter your email",
              inputType: TextInputType.emailAddress,
              obscureText: false,
            ),
            const CustomLableTextFormField(
              lableText: "Password",
              hintText: "Enter your password",
              inputType: TextInputType.number,
              obscureText: true,
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: MyElevatedButton(
                borderRadius: BorderRadius.circular(15),
                color: kBluecolor_1,
                height: 60,
                width: 290,
                onPressed: () {},
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
                  onPressed: () {},
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
    );
  }
}
