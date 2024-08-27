import 'package:adhd/constants.dart';
import 'package:adhd/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'detail_row.dart';

class ResultIconInfo extends StatelessWidget {
  const ResultIconInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: kBlackcolor_2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      title: Text(
        S.of(context).More_Details,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
      content: SingleChildScrollView(
        child: ListBody(
          children: [
            detailRow(const Color(0xff238800), S.of(context).Low),
            detailRow(const Color(0xffFF8A8A), S.of(context).Medium),
            detailRow(const Color(0xffBA0F13), S.of(context).high),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(
            S.of(context).ok,
            style: const TextStyle(
              color: Colors.lightBlue,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
