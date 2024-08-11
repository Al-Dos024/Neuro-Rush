import 'package:cloud_firestore/cloud_firestore.dart';

Future<List<Map<String, dynamic>>> fetchQuestions() async {
  final snapshot = await FirebaseFirestore.instance
      .collection('questions')
      .orderBy('num')
      .get();
  return snapshot.docs.map((doc) => doc.data()).toList();
}

Future<List<Map<String, dynamic>>> fetchAnswers() async {
  final snapshot = await FirebaseFirestore.instance
      .collection('answers')
      .orderBy('num')
      .get();
  return snapshot.docs.map((doc) => doc.data()).toList();
}
