import 'package:adhd/features/main/data/Image_service.dart';
import 'package:adhd/features/quiz%20for%20kid/presentation/widgets/sketon.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
<<<<<<< HEAD

class CustomLeading extends StatelessWidget {
  const CustomLeading({super.key, this.urlImg});
  final String? urlImg;
=======
import 'package:firebase_database/firebase_database.dart';
import 'package:adhd/generated/l10n.dart';

class CustomLeading extends StatelessWidget {
  const CustomLeading({super.key});
>>>>>>> 30601a89565752452952d8a5c9d6fe9b24577759

  @override
  Widget build(BuildContext context) {
    DatabaseReference ref = FirebaseDatabase.instance
        .ref("users/${FirebaseAuth.instance.currentUser!.uid}")
        .child("Personal Data");

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        children: [
<<<<<<< HEAD
          Row(
=======
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: FutureBuilder<String?>(
              future: ImageService().fetchImageUrl(), // Use the shared service
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
>>>>>>> 30601a89565752452952d8a5c9d6fe9b24577759
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                // ignore: unnecessary_null_comparison
                child: urlImg != null
                    ? Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.network(
                            urlImg!,
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    : const Text("no data"),
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
            ],
          ),
          const Spacer(),
          Builder(
            builder: (context) => IconButton(
              icon: const Icon(
                Icons.menu,
              ),
              onPressed: () => Scaffold.of(context).openEndDrawer(),
            ),
          ),
        ],
      ),
    );
  }
}
/**_downloadURL != null ? Container(
            color: Colors.amber,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(_downloadURL!)),
          ) : Container(height: 10,width: 10,color: Colors.amber,),
            UrlImg != null
                    ? Container(
                        color: Colors.amber,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            UrlImg,
                          ),
                        ),
                      )
                    : 
           
           
           */