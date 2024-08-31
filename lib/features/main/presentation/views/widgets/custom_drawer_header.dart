import 'package:adhd/constants.dart';
import 'package:adhd/features/main/data/Image_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({super.key});

  static String? _cachedUserId;
  static Future<String?>? _userName;
  static Future<String?>? _userEmail;
  static Future<String?>? _imageUrl;

  static void _resetCacheIfNeeded() {
    final currentUserId = FirebaseAuth.instance.currentUser?.uid;
    if (_cachedUserId != currentUserId) {
      _cachedUserId = currentUserId;
      _userName = _fetchUserData("Name");
      _userEmail = _fetchUserData("Email");
      _imageUrl = ImageService().fetchImageUrl();
    }
  }

  static Future<String?> _fetchUserData(String key) async {
    final String userId = FirebaseAuth.instance.currentUser!.uid;
    DatabaseReference ref =
        FirebaseDatabase.instance.ref("users/$userId").child("Personal Data");
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
    _resetCacheIfNeeded();

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
                future: _imageUrl,
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
              FutureBuilder<String?>(
                future: _userName,
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
              FutureBuilder<String?>(
                future: _userEmail,
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
