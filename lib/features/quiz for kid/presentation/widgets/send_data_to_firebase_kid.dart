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
        '1 -Opposition score': scoreA,
        '2 -Cognitive problems score': scoreB,
        '3 -Hyperactivity score': scoreC,
        '4 -Anxiety and shyness score': scoreD,
        '5 -Perfectionism score': scoreE,
        '6 -Social problems score': scoreF,
        '7 -Psychosomatic diseases score': scoreG,
        '8 -Attention deficit score': scoreH,
        '9 -Arousal and impulsivity score': scoreI,
        '10 -Passion score': scoreJ,
        '11 -General indicator score': scoreK,
        '12 -DMS 5 score': scoreL,
        '13 -Hyperactivity DMS 5 score': scoreM,
        '14 -mixed DMS 5 score': scoreN,
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
