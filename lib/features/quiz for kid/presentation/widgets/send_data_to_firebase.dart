import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import '../../data/model/nested_list.dart';

String id = FirebaseAuth.instance.currentUser!.uid;
DatabaseReference ref = FirebaseDatabase.instance.ref("users/$id");

Future<int> getNumberOfAttempt() async {
  try {
    DataSnapshot snapshot = await FirebaseDatabase.instance
        .ref("users/${FirebaseAuth.instance.currentUser!.uid}")
        .child('Attempt Number')
        .get();

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

void sendDataToFirebase() async {
  try {
    int attempt = await getNumberOfAttempt();
    print('Number of attempts: $attempt');

    ref.child("Attempt Number $attempt").set(
      {
        'A -Opposition score': scoreA,
        'B -Cognitive problems score': scoreB,
        'C -Hyperactivity score': scoreC,
        'D -Anxiety and shyness score': scoreD,
        'E -Perfectionism score': scoreE,
        'F -Social problems score': scoreF,
        'G -Psychosomatic diseases score': scoreG,
        'H -Attention deficit score': scoreH,
        'I -Arousal and impulsivity score': scoreI,
        'J -Passion score': scoreJ,
        'K -General indicator score': scoreK,
        'L -DMS 5 score': scoreL,
        'M -Hyperactivity DMS 5 score': scoreM,
        'N -mixed DMS 5 score': scoreN,
      },
    );
    ref.child('Attempt Number').set(++attempt);
  } catch (e) {
    print('Error: $e');
  }
}
