import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget detailRow(Color color, String text) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 4.0),
    child: Row(
      children: [
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            text,
            style: GoogleFonts.kodchasan(fontSize: 16, color: color),
          ),
        ),
      ],
    ),
  );
}
