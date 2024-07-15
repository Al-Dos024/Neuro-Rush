import 'package:adhd/constants.dart';
import 'package:flutter/material.dart';

Widget buildPage({
  required Color color,
  required String urlImage,
  required String title,
  required String subtitle,
}) =>
    Container(
      color: color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            urlImage,
            fit: BoxFit.cover,
            width: 300,
          ),
          const SizedBox(
            height: 32,
          ),
          Text(
            title,
            style: const TextStyle(
                color: kPrimerycolor,
                fontSize: 24,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 24,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: Text(
              subtitle,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.black, fontSize: 16),
            ),
          )
        ],
      ),
    );
