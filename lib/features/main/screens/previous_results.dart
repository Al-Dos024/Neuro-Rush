import 'package:adhd/constants.dart';
import 'package:adhd/features/main/widgets/result_widget.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../quiz for kid/presentation/widgets/send_data_to_firebase.dart';

class PreviousResults extends StatelessWidget {
  const PreviousResults({super.key});

  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: kWhitecolor,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: kBluecolor_1,
          title: Text(
            "Previous Results",
            style: GoogleFonts.kodchasan(
              color: kWhitecolor,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        body: FutureBuilder<DatabaseEvent>(
          future: refmain.once(),
          builder: (context, AsyncSnapshot<DatabaseEvent> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else if (snapshot.hasData) {
              final dataSnapshot = snapshot.data!.snapshot;
              if (dataSnapshot.value == null) {
                return const Center(child: Text('No Tests Available'));
              } else {
                final data = (dataSnapshot.value as Map).values.toList();
                return ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    final item = data[index];
                    return ResultWidget(
                      attemptNum: item['properties']['Attempt Number'],
                      average: item['properties']['Average'],
                      age: item['properties']['Age'],
                      gender: item['properties']['Gender'],
                      testTime: item['properties']['Time'],
                      testDate: item['properties']['Date'],
                    );
                  },
                );
              }
            } else {
              return const Center(
                  child: Text(
                      'No Data Available')); // Handle case where snapshot is empty
            }
          },
        ));
    return scaffold;
  }
}
