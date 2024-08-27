import 'package:adhd/features/quiz_for_adult/presentation/screens/adult.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:intl/intl.dart';

String id = FirebaseAuth.instance.currentUser!.uid;

String defTheAvg(int score) {
  return score == 1 || score == 2
      ? "low"
      : score == 3
          ? "Medium"
          : "High";
}

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

void sendDataToFirebaseAdult(int score) async {
  try {
    int attempt = await getNumberOfAttempt();
    String avg = defTheAvg(score);
    print('Number of attempts: $attempt');
    var now = DateTime.now();
    String formatterDate = DateFormat('yMd').format(now);
    String formatterTime = DateFormat.jm().format(now);

    refmain_pri.child("$attempt").child("Data").set(
      {
        'A -Overall ADhd': (scoreA / 6).round(),
        'B -Detailed ADHD': (scoreB / 12).round(),
      },
    );
    refmain_pri.child("$attempt").child("properties").set(
      {
        'Attempt Number': attempt,
        'Average': avg,
        'Time': formatterTime,
        'Date': formatterDate,
      },
    );
    refPersonal.child('Attempt Number').set(++attempt);
  } catch (e) {
    print('Error: $e');
  }
}
