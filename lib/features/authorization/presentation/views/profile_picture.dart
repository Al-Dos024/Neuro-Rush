import 'dart:io';

import 'package:adhd/core/utils/show_snackbar.dart';
import 'package:adhd/features/authorization/presentation/views/widgets/my_elevated_button%20copy.dart';
import 'package:adhd/features/main/presentation/views/main_view.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../constants.dart';

class ProfilePicure extends StatefulWidget {
  const ProfilePicure({super.key});

  @override
  State<ProfilePicure> createState() => _ProfilePicureState();
}

class _ProfilePicureState extends State<ProfilePicure> {
  File? _image;
  String? kdownloadURL;
  final ImagePicker _picker = ImagePicker();
  final FirebaseStorage _storage = FirebaseStorage.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  late User? user;

  Future<void> _pickImage() async {
    final XFile? pickedImage =
        await _picker.pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
      });
    }
  }

  Future<void> _uploadImage() async {
    if (_image == null) return;

    try {
      String fileName = FirebaseAuth.instance.currentUser!.uid;
      Reference ref = _storage.ref().child(fileName);
      UploadTask uploadTask = ref.putFile(_image!);
      TaskSnapshot taskSnapshot = await uploadTask;
      String downloadUrl = await taskSnapshot.ref.getDownloadURL();
      await _firestore.collection('images').add({'url': downloadUrl});
      showSnackBar(context,
          message: "Image uploaded successfully", title: "yap!");

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) =>  MainView(urlImg:kdownloadURL,),
        ),
      );
      setState(() {
        kdownloadURL=downloadUrl;
      });
    } catch (e) {
      showSnackBar(context,
          message: "Failed to upload image: $e", title: "oops!");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
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
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: _image != null
                    ? GestureDetector(
                        onTap: _pickImage,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(90),
                          child: Image.file(
                            _image!,
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    : IconButton(
                        icon: const Icon(
                          Icons.image,
                        ),
                        onPressed: _pickImage,
                      ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
              ),
              child: Text(
                "profile photo",
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
                "Please make sure that the photo you upload will not be modified later",
                style: GoogleFonts.kodchasan(
                  color: kGraycolor_1,
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            MyElevatedButton(
              onPressed: _uploadImage,
              color: kBluecolor_1,
              borderRadius: BorderRadius.circular(25),
              width: 200,
              height: 48,
              child: Text(
                'Upload picture',
                style: GoogleFonts.kodchasan(
                    color: kWhitecolor,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
            ),
          
          
          ],
        ),
      ),
    );
  }
}
/**_downloadURL != null ? Container(
            color: Colors.amber,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(_downloadURL!)),
          ) : Container(height: 10,width: 10,color: Colors.amber,), */