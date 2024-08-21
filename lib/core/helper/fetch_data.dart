import 'package:cloud_firestore/cloud_firestore.dart';

Future<List<Map<String, dynamic>>> fetchQuestionsEng() async {
  final snapshot = await FirebaseFirestore.instance
      .collection('questions')
      .orderBy('num')
      .get();
  return snapshot.docs.map((doc) => doc.data()).toList();
}

Future<List<Map<String, dynamic>>> fetchAnswersEng() async {
  final snapshot = await FirebaseFirestore.instance
      .collection('answers')
      .orderBy('num')
      .get();
  return snapshot.docs.map((doc) => doc.data()).toList();
}

Future<List<Map<String, dynamic>>> fetchQuestionsAr() async {
  final snapshot = await FirebaseFirestore.instance
      .collection('questionsAr')
      .orderBy('num')
      .get();
  return snapshot.docs.map((doc) => doc.data()).toList();
}

Future<List<Map<String, dynamic>>> fetchAnswersAr() async {
  final snapshot = await FirebaseFirestore.instance
      .collection('answersAr')
      .orderBy('num')
      .get();
  return snapshot.docs.map((doc) => doc.data()).toList();
}
