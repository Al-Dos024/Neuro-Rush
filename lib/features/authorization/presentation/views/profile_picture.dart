import 'dart:io';
import 'package:adhd/core/utils/show_snackbar.dart';
import 'package:adhd/features/authorization/presentation/views/widgets/my_elevated_button%20copy.dart';
import 'package:adhd/features/authorization/presentation/views/widgets/my_text_button.dart';
import 'package:adhd/features/main/presentation/views/main_view.dart';
import 'package:adhd/generated/l10n.dart';
import 'package:adhd/main.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import '../../../../constants.dart';

class ProfilePicture extends StatelessWidget {
  ProfilePicture({super.key});

  final ValueNotifier<File?> _selectedImageNotifier =
      ValueNotifier<File?>(null);

  final String defaultImagePath = 'assets/images/default_profile.png';

  Future<void> _pickImage(BuildContext context) async {
    final ImagePicker picker = ImagePicker();
    final XFile? pickedImage =
        await picker.pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      _selectedImageNotifier.value = File(pickedImage.path);
    } else {
      showSnackBar(context,
          message: S.of(context).No_image_selected,
          title: S.of(context).snackbar_weak);
    }
  }

  Future<void> _uploadImage(BuildContext context, File image) async {
    showSnackBar(context,
        message: S.of(context).Uploading_load, title: S.of(context).Info);

    try {
      String fileName = FirebaseAuth.instance.currentUser!.uid;
      Reference ref = FirebaseStorage.instance.ref().child(fileName);
      UploadTask uploadTask = ref.putFile(image);
      TaskSnapshot taskSnapshot = await uploadTask;
      String downloadUrl = await taskSnapshot.ref.getDownloadURL();

      await _saveImageUrlToDatabase(downloadUrl);
      showSnackBar(context,
          message: S.of(context).Image_uploaded_successfully,
          title: S.of(context).Success);

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const MainView(),
        ),
      );
    } catch (e) {
      showSnackBar(context,
          message: S.of(context).Failed_to_upload_image,
          title: S.of(context).snackbar_weak);
    }
  }

  Future<void> _saveImageUrlToDatabase(String url) async {
    DatabaseReference ref = FirebaseDatabase.instance
        .ref("users/${FirebaseAuth.instance.currentUser!.uid}")
        .child("Personal Data")
        .child("Profile Image");
    await ref.set(url);
    await FirebaseFirestore.instance.collection('images').add({'url': url});
  }

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = MyApp.themeNotifier.value == ThemeMode.dark;
    return Scaffold(
      backgroundColor: isDarkMode ? kBlackcolor_1 : kWhitecolor,
      appBar: AppBar(
        backgroundColor: isDarkMode ? kBlackcolor_1 : kWhitecolor,
        leading: Icon(
          Icons.arrow_back,
          color: isDarkMode ? kBlackcolor_1 : kWhitecolor,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: MyTextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MainView(),
                  ),
                );
              },
              child: Text(
                "Skip",
                style: GoogleFonts.kodchasan(fontSize: 15),
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => _pickImage(context),
              child: ValueListenableBuilder<File?>(
                valueListenable: _selectedImageNotifier,
                builder: (context, image, child) {
                  return Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: kBlackcolor.withOpacity(0.25),
                          spreadRadius: 0,
                          blurRadius: 8,
                          offset: const Offset(0, 8),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(90),
                      color: kBluecolor_1,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(90),
                      child: image != null
                          ? Image.file(
                              image,
                              fit: BoxFit.cover,
                            )
                          : Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.add_a_photo,
                                  color: kWhitecolor,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    "Click here\n to select picture ",
                                    style: GoogleFonts.kodchasan(
                                      color: kWhitecolor,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Text(
                S.of(context).Profile_Photo,
                style: GoogleFonts.kodchasan(
                  color: kBluecolor_4,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              width: 210,
              child: Text(
                textAlign: TextAlign.center,
                S.of(context).Profile_Photo_sub,
                style: GoogleFonts.kodchasan(
                  color: kGraycolor_1,
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(height: 30),
            MyElevatedButton(
              onPressed: () {
                final image = _selectedImageNotifier.value;
                if (image != null) {
                  _uploadImage(context, image);
                } else {
                  showSnackBar(context,
                      message: S.of(context).No_image_selected,
                      title: S.of(context).snackbar_weak);
                }
              },
              color: kBluecolor_1,
              borderRadius: BorderRadius.circular(25),
              width: 200,
              height: 48,
              child: Text(
                S.of(context).Upload_Picture,
                style: GoogleFonts.kodchasan(
                  color: kWhitecolor,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
