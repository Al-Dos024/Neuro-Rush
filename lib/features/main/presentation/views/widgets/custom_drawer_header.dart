import 'package:adhd/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({super.key});

  Future<String?> _fetchImageUrl() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? cachedUrl = prefs.getString('profileImageUrl');

    DatabaseReference ref = FirebaseDatabase.instance
        .ref("users/${FirebaseAuth.instance.currentUser!.uid}")
        .child("Personal Data")
        .child("Profile Image");

    try {
      DataSnapshot snapshot = await ref.get();
      if (snapshot.exists) {
        String newUrl = snapshot.value.toString();
        if (newUrl != cachedUrl) {
          prefs.setString('profileImageUrl', newUrl);
        }
        return newUrl;
      }
    } catch (error) {
      print('Error fetching image URL: $error');
    }
    return cachedUrl;
  }

  @override
  Widget build(BuildContext context) {
    final String userId = FirebaseAuth.instance.currentUser!.uid;
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
              FutureBuilder<String?>(
                future: _fetchImageUrl(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  } else if (snapshot.hasError) {
                    return const Text("Error loading image");
                  } else if (snapshot.data != null) {
                    return Container(
                      margin: const EdgeInsets.symmetric(vertical: 20),
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(75),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            spreadRadius: 0,
                            blurRadius: 8,
                            offset: const Offset(0, 8),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(75),
                        child: Image.network(
                          snapshot.data!,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  } else {
                    return const Text("No image");
                  }
                },
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
