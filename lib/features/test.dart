import 'dart:io';

import 'package:adhd/constants.dart';
import 'package:adhd/core/utils/show_snackbar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  File? _image;
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
      String fileName = user!.uid;
      Reference ref = _storage.ref().child(fileName);
      UploadTask uploadTask = ref.putFile(_image!);
      TaskSnapshot taskSnapshot = await uploadTask;
      String downloadUrl = await taskSnapshot.ref.getDownloadURL();
      await _firestore.collection('images').add({'url': downloadUrl});
      showSnackBar(context,
          message: "Image uploaded successfully", title: "yap!");
    } catch (e) {
      showSnackBar(context,
          message: "Failed to upload image: $e", title: "oops!");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: kBluecolor_1
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child:  _image != null ? ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.file(_image! , fit: BoxFit.fill,),) :IconButton(icon:const Icon(Icons.image,),onPressed:_pickImage,),
            ),
          ),
          ElevatedButton(
              onPressed: _uploadImage,
              child: Text('Upload '),
            ),
          Container()
        ],
      )
    );
  }
}
/**Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _image != null ? Image.file(_image!) : Text('No image selected'),
            ElevatedButton(
              onPressed: _pickImage,
              child: Text('Pick Image'),
            ),
            ElevatedButton(
              onPressed: _uploadImage,
              child: Text('Upload Image'),
            ),
          ],
        ),
      ), */