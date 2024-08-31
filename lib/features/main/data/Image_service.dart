import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ImageService {
  // Singleton pattern to ensure only one instance of the service
  static final ImageService _instance = ImageService._internal();

  factory ImageService() {
    return _instance;
  }

  ImageService._internal();

  Future<String?> fetchImageUrl() async {
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
          await prefs.setString('profileImageUrl', newUrl);
        }
        return newUrl;
      }
    } catch (error) {
      print('Error fetching image URL: $error');
    }
    return cachedUrl;
  }
}
