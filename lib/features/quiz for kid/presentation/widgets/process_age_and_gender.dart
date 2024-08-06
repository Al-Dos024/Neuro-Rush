import 'package:adhd/features/quiz%20for%20kid/data/Dataset/female/female12-14.dart';
import 'package:adhd/features/quiz%20for%20kid/data/Dataset/female/female15-17.dart';
import 'package:adhd/features/quiz%20for%20kid/data/Dataset/female/female3-5.dart';
import 'package:adhd/features/quiz%20for%20kid/data/Dataset/female/female6-8.dart';
import 'package:adhd/features/quiz%20for%20kid/data/Dataset/female/female9-11.dart';
import 'package:adhd/features/quiz%20for%20kid/data/Dataset/male/male12-14.dart';
import 'package:adhd/features/quiz%20for%20kid/data/Dataset/male/male15-17.dart';
import 'package:adhd/features/quiz%20for%20kid/data/Dataset/male/male3-5.dart';
import 'package:adhd/features/quiz%20for%20kid/data/Dataset/male/male6-8.dart';
import 'package:adhd/features/quiz%20for%20kid/data/Dataset/male/male9-11.dart';

void processAgeAndGender({required bool isMale, required int age}) {
  String key = 'default';
  if (isMale) {
    if (age >= 3 && age <= 5) {
      key = '3_5_M';
    } else if (age >= 6 && age <= 8) {
      key = '6_8_M';
    } else if (age >= 9 && age <= 11) {
      key = '9_11_M';
    } else if (age >= 12 && age <= 14) {
      key = '12_14_M';
    } else if (age >= 15 && age <= 17) {
      key = '15_17_M';
    }
  } else {
    if (age >= 3 && age <= 5) {
      key = '3_5_F';
    } else if (age >= 6 && age <= 8) {
      key = '6_8_F';
    } else if (age >= 9 && age <= 11) {
      key = '9_11_F';
    } else if (age >= 12 && age <= 14) {
      key = '12_14_F';
    } else if (age >= 15 && age <= 17) {
      key = '15_17_F';
    }
  }

  switch (key) {
    case '3_5_M':
      all3_5FunctionM();
      print('in 3 to 5, male');
      break;
    case '6_8_M':
      all6_8FunctionM();
      print('in 6 to 8, male');
      break;
    case '9_11_M':
      all9_11FunctionM();
      print('in 9 to 11, male');
      break;
    case '12_14_M':
      all12_14FunctionM();
      print('in 12 to 14, male');
      break;
    case '15_17_M':
      all15_17FunctionM();
      print('in 15 to 17, male');
      break;
    case '3_5_F':
      all3_5FunctionF();
      print('in 3 to 5, female');
      break;
    case '6_8_F':
      all6_8FunctionF();
      print('in 6 to 8, female');
      break;
    case '9_11_F':
      all9_11FunctionF();
      print('in 9 to 11, female');
      break;
    case '12_14_F':
      all12_14FunctionF();
      print('in 12 to 14, female');
      break;
    case '15_17_F':
      all15_17FunctionF();
      print('in 15 to 17, female');
      break;
    default:
      print('No matching case found');
  }
}
