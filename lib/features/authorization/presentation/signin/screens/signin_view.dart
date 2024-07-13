import 'package:adhd/constants.dart';
import 'package:adhd/features/authorization/presentation/widgets/lable_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
              height: 15,
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
              child: TextButton(
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
            ElevatedButton(onPressed: (){}, child: Text("Login"))
          ],
        ),
      ),
    );
  }
}
