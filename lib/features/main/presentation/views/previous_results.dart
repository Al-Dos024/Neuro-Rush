import 'package:adhd/constants.dart';
import 'package:adhd/features/main/presentation/views/widgets/result_widget.dart';
import 'package:adhd/generated/l10n.dart';
import 'package:adhd/main.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../quiz for kid/presentation/widgets/send_data_to_firebase.dart';

class PreviousResults extends StatelessWidget {
  const PreviousResults({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = MyApp.themeNotifier.value == ThemeMode.dark;

    Query refmain =
        FirebaseDatabase.instance.ref("users/$id").child("Tests").orderByKey();

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
             color: isDarkMode ? kBlackcolor_1 : kWhitecolor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: kBluecolor_1,
        title: Text(
          S.of(context).Previous_Results,
          style: GoogleFonts.kodchasan(
           color: isDarkMode ? kBlackcolor_1 : kWhitecolor,
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
              final value = dataSnapshot.value;

              if (value is List) {
                return ListView.builder(
                  itemCount: value.length,
                  itemBuilder: (context, index) {
                    final item = value[index];
                    if (item != null && item is Map) {
                      return ResultWidget(
                        attemptNum: item['properties']['Attempt Number'],
                        average: item['properties']['Average'],
                        age: item['properties']['Age'],
                        gender: item['properties']['Gender'],
                        testTime: item['properties']['Time'],
                        testDate: item['properties']['Date'],
                        index: index.toString(),
                        userId: id,
                      );
                    } else {
                      return const SizedBox(); // Skip null or invalid entries
                    }
                  },
                );
              } else if (value is Map) {
                final data = value.values.toList()
                  ..sort(
                      (a, b) => int.parse(a.key).compareTo(int.parse(b.key)));
                ;
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
                      index: index.toString(),
                      userId: id,
                    );
                  },
                );
              } else {
                return const Center(child: Text('Unexpected Data Format'));
              }
            }
          } else {
            return const Center(child: Text('No Data Available'));
          }
        },
      ),
    );
  }
}
