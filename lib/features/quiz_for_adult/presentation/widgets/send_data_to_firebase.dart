import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:intl/intl.dart';

String id = FirebaseAuth.instance.currentUser!.uid;

DatabaseReference refmain_pri =
    FirebaseDatabase.instance.ref("users/$id").child("Tests");

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

void sendDataToFirebaseAdult() async {
  try {
    int attempt = await getNumberOfAttempt();
    print('Number of attempts: $attempt');
    var now = DateTime.now();
    String formatterDate = DateFormat('yMd').format(now);
    String formatterTime = DateFormat.jm().format(now);

    refmain_pri.child("$attempt").child("Data").set(
      {
        'A -Opposition score': 12,
        'B -Cognitive problems score': 12,
      },
    );
    refmain_pri.child("$attempt").child("properties").set(
      {
        'Attempt Number': attempt,
        'Average': "Yes or No",
        'Time': formatterTime,
        'Date': formatterDate,
      },
    );
    refPersonal.child('Attempt Number').set(++attempt);
  } catch (e) {
    print('Error: $e');
  }
}
