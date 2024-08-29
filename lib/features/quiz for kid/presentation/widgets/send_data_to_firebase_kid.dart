import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:intl/intl.dart';
import '../../data/model/nested_list.dart';

String id = FirebaseAuth.instance.currentUser!.uid;

DatabaseReference refmainChild =
    FirebaseDatabase.instance.ref("users/$id").child("Tests").child("child");

DatabaseReference refPersonal =
    FirebaseDatabase.instance.ref("users/$id").child("Personal Data");

Future<int> getNumberOfAttempt() async {
  try {
    DataSnapshot snapshot = await refPersonal.child('Attempt Number').get();
    if (snapshot.exists && snapshot.value != null) {
      return int.parse(snapshot.value.toString());
    } else {
      throw Exception('No data available at the specified path.');
    }
  } catch (e) {
    print('Error fetching data: $e');
    throw e;
  }
}

void sendDataToFirebase({required bool isMale, required int age}) async {
  try {
    int attempt = await getNumberOfAttempt();
    print('Number of attempts: $attempt');
    var now = DateTime.now();
    String formatterDate = DateFormat('yMd').format(now);
    String formatterTime = DateFormat.jm().format(now);

    refmainChild.child("$attempt").child("Data").set(
      {
        'A -Opposition score': scoreK,
        'B -Cognitive problems score': scoreE,
        'C -Hyperactivity score': scoreH,
        'D -Anxiety and shyness score': scoreF,
        'E -Perfectionism score': scoreL,
        'F -Social problems score': scoreB,
        'G -Psychosomatic diseases score': scoreI,
        'H -Attention deficit score': scoreD,
        'I -Arousal and impulsivity score': scoreA,
        'J -Passion score': scoreM,
        'K -General indicator score': scoreG,
        'L -DMS 5 score': scoreN,
        'M -Hyperactivity DMS 5 score': scoreJ,
        'N -mixed DMS 5 score': scoreC,
      },
    );
    refmainChild.child("$attempt").child("properties").set(
      {
        'Attempt Number': attempt,
        'Average': scoreN,
        'Time': formatterTime,
        'Date': formatterDate,
        'Age': age,
        'Gender': isMale ? "male" : "female",
      },
    );
    refPersonal.child('Attempt Number').set(++attempt);
  } catch (e) {
    print('Error: $e');
  }
}
