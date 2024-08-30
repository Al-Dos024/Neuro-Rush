import 'package:adhd/features/quiz%20for%20kid/presentation/widgets/sketon.dart';
import 'package:adhd/generated/l10n.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CustomLeading extends StatelessWidget {
  const CustomLeading({super.key});

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
    DatabaseReference ref = FirebaseDatabase.instance
        .ref("users/${FirebaseAuth.instance.currentUser!.uid}")
        .child("Personal Data");

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: FutureBuilder<String?>(
              future: _fetchImageUrl(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  return const Text("Error loading image");
                } else if (snapshot.data != null) {
                  // Display the image if the URL is available
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    height: 60,
                    width: 60,
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
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                S.of(context).title,
                style: GoogleFonts.jura(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              FutureBuilder(
                future: ref.child("Name").get(),
                builder: (context, AsyncSnapshot<DataSnapshot> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Skeleton(
                      height: 10,
                    );
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
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                      ),
                    );
                  }
                },
              ),
            ],
          ),
          const Spacer(),
          Builder(
            builder: (context) => IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () => Scaffold.of(context).openEndDrawer(),
            ),
          ),
        ],
      ),
    );
  }
}
