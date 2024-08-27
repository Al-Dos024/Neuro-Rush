import 'package:adhd/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the current user's ID
    final String userId = FirebaseAuth.instance.currentUser!.uid;

    // Reference to the user's personal data in Firebase
    DatabaseReference ref =
        FirebaseDatabase.instance.ref("users/$userId").child("Personal Data");

    return SizedBox(
      height: 230,
      child: DrawerHeader(
        decoration: const BoxDecoration(
          color: kBluecolor_1,
        ),
        child: Center(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("assets/images/avatar.png"),
                ),
              ),
              // Fetch and display the user's name
              FutureBuilder(
                future: ref.child("Name").get(),
                builder: (context, AsyncSnapshot<DataSnapshot> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  } else if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  } else if (!snapshot.hasData ||
                      snapshot.data!.value == null) {
                    return const Text('No name found');
                  } else {
                    String name = snapshot.data!.value.toString();
                    return Text(
                      name,
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w800,
                        fontSize: 18,
                      ),
                    );
                  }
                },
              ),
              // Fetch and display the user's email
              FutureBuilder(
                future: ref.child("Email").get(),
                builder: (context, AsyncSnapshot<DataSnapshot> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  } else if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  } else if (!snapshot.hasData ||
                      snapshot.data!.value == null) {
                    return const Text('No email found');
                  } else {
                    String email = snapshot.data!.value.toString();
                    return Text(
                      email,
                      style: GoogleFonts.inter(
                        fontSize: 12,
                        fontWeight: FontWeight.w200,
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
