import 'package:adhd/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomLableTextFormField extends StatelessWidget {
  const CustomLableTextFormField({
    super.key,
    required this.lableText,
    this.hintText,
    this.initialValue,
    this.validator,
    this.onChanged,
    this.controller,
    required this.inputType,
    this.suffixIcon,
    required this.obscureText,
  });
  final String lableText;
  final String? hintText;
  final String? initialValue;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final TextEditingController? controller;
  final TextInputType inputType;
  final Widget? suffixIcon;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text(
              lableText,
              style: GoogleFonts.inter(
                
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: kBlackcolor.withOpacity(0.25),
                  spreadRadius: 0,
                  blurRadius: 4,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: TextFormField(
            
              textAlign: TextAlign.start,
              keyboardType: inputType,
              initialValue: initialValue,
              validator: validator,
              onChanged: onChanged,
              obscureText: obscureText,
              controller: controller,
              decoration: InputDecoration(
                suffixIcon: suffixIcon,
                filled: true,
                fillColor: kGraycolor_2,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 15,
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(0, 44, 44, 125),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: kGraycolor_2,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                hintText: hintText,
                
              ),
            ),
          ),
        ],
      ),
    );
  }
}
