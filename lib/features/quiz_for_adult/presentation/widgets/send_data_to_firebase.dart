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

DatabaseReference refmainAdult =
    FirebaseDatabase.instance.ref("users/$id").child("Tests").child("Adult");

DatabaseReference refPersonal =
    FirebaseDatabase.instance.ref("users/$id").child("Personal Data");

Future<int> getNumberOfAttempt() async {
  try {
    DataSnapshot snapshot =
        await refPersonal.child('Adult Attempt Number').get();
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
    int adultattempt = await getNumberOfAttempt();
    String avg = defTheAvg(score);
    print('Number of attempts: $adultattempt');
    var now = DateTime.now();
    String formatterDate = DateFormat('yMd').format(now);
    String formatterTime = DateFormat.jm().format(now);

    refmainAdult.child("$adultattempt").child("Data").set(
      {
        'A -Overall ADhd': (scoreA / 6).round(),
        'B -Detailed ADHD': (scoreB / 12).round(),
      },
    );
    refmainAdult.child("$adultattempt").child("properties").set(
      {
        'Adult Attempt Number': adultattempt,
        'Average': avg,
        'Time': formatterTime,
        'Date': formatterDate,
      },
    );
    refPersonal.child('Adult Attempt Number').set(++adultattempt);
  } catch (e) {
    print('Error: $e');
  }
}
