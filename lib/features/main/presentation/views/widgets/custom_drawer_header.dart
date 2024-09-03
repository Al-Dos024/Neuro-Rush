import 'package:adhd/constants.dart';
import 'package:adhd/core/utils/assets.dart';
import 'package:adhd/features/main/data/Image_service.dart';
import 'package:adhd/features/quiz%20for%20kid/presentation/widgets/sketon.dart';
import 'package:cached_network_image/cached_network_image.dart';
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
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Center(
            child: Column(
              children: [
                FutureBuilder<String?>(
                  future: _imageUrl,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Skeleton(
                        height: 100,
                        r: 50,
                        width: 100,
                      );
                    } else if (snapshot.hasError) {
                      return const Text("Error loading image");
                    } else if (snapshot.data != null) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: CachedNetworkImage(
                          imageUrl: snapshot.data!,
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                          placeholder: (context, url) => const Skeleton(
                            height: 100,
                            width: 100,
                            r: 50,
                          ),
                        ),
                      );
                    } else {
                      return ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(30),
                        ),
                        child: Image.asset(
                          AssetsData.imageProfile,
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                      );
                    }
                  },
                ),
                const SizedBox(height: 8),
                SizedBox(
                  width: 230,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FutureBuilder<String?>(
                        future: _userName,
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return const Padding(
                              padding: EdgeInsets.symmetric(vertical: 8),
                              child: Skeleton(
                                height: 10,
                                width: 80,
                              ),
                            );
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
                              overflow: TextOverflow.ellipsis,
                            );
                          }
                        },
                      ),
                      const SizedBox(height: 4),
                      FutureBuilder<String?>(
                        future: _userEmail,
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return const Padding(
                              padding: EdgeInsets.symmetric(vertical: 8),
                              child: Skeleton(
                                height: 10,
                                width: 100,
                              ),
                            );
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
                              overflow: TextOverflow.ellipsis,
                            );
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
