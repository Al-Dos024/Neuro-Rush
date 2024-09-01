import 'package:adhd/core/utils/assets.dart';
import 'package:adhd/features/main/data/Image_service.dart';
import 'package:adhd/features/quiz%20for%20kid/presentation/widgets/sketon.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:adhd/generated/l10n.dart';

class CustomLeading extends StatelessWidget {
  const CustomLeading({super.key});

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
              future: ImageService().fetchImageUrl(), // Use the shared service
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: Skeleton(
                      height: 50,
                      width: 50,
                      r: 30,
                    ),
                  );
                } else if (snapshot.hasError) {
                  return const Text("Error loading image");
                } else if (snapshot.data != null) {
                  // Display the image if the URL is available
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: CachedNetworkImage(
                      imageUrl: snapshot.data!,
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                      placeholder: (context, url) => const Skeleton(
                        height: 50,
                        width: 50,
                        r: 30,
                      ),
                    ),
                  );
                } else {
                  return ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                    child: Image.asset(
                      AssetsData.imageProfile,
                      height: 50,
                      width: 50,
                    ),
                  );
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
