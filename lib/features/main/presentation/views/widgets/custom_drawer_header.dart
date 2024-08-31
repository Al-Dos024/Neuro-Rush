import 'package:adhd/constants.dart';
import 'package:adhd/features/main/data/Image_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({super.key});

  Future<String?> _fetchUserData(DatabaseReference ref, String key) async {
    try {
      DataSnapshot snapshot = await ref.child(key).get();
      if (snapshot.exists) {
        return snapshot.value.toString();
      }
    } catch (error) {
      print('Error fetching $key: $error');
    }
    return null;
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
              // Fetch and display the profile image using the shared service
              FutureBuilder<String?>(
                future: ImageService().fetchImageUrl(),
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
              FutureBuilder<String?>(
                future: _fetchUserData(ref, "Name"),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  } else if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  } else if (snapshot.data == null) {
                    return const Text('No name found');
                  } else {
                    return Text(
                      snapshot.data!,
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w800,
                        fontSize: 18,
                      ),
                    );
                  }
                },
              ),
              // Fetch and display the user's email
              FutureBuilder<String?>(
                future: _fetchUserData(ref, "Email"),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  } else if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  } else if (snapshot.data == null) {
                    return const Text('No email found');
                  } else {
                    return Text(
                      snapshot.data!,
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
