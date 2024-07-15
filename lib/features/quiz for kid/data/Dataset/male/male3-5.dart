import 'package:adhd/features/quiz%20for%20kid/data/model/nested_list.dart';

void all3_5FunctionM() {
  tAscore3_5(listNumP2[0]);
  tBscore3_5(listNumP2[1]);
  tCscore3_5(listNumP2[2]);
  tDscore3_5(listNumP2[3]);
  tEscore3_5(listNumP2[4]);
  tFscore3_5(listNumP2[5]);
  tGscore3_5(listNumP2[6]);
  tHscore3_5(listNumP2[7]);
  tIscore3_5(listNumP2[8]);
  tJscore3_5(listNumP2[9]);
  tKscore3_5(listNumP2[10]);
  tLscore3_5(listNumP2[11]);
  tMscore3_5(listNumP2[12]);
  tNscore3_5(listNumP2[13]);
}

List<int> scoreAborad3_5 = [
  38,
  40,
  42,
  44,
  46,
  47,
  49,
  51,
  53,
  55,
  57,
  59,
  61,
  63,
  65,
  67,
  69,
  71,
  73,
  75,
  77,
  79,
  80,
  82,
  84,
  86,
  88,
  90
];
void tAscore3_5(int num) {
  if (num >= 27) {
    scoreA = 90;
  } else {
    scoreA = scoreAborad3_5[num];
  }
}

List<int> scoreBborad3_5 = [
  42,
  44,
  46,
  48,
  49,
  51,
  53,
  55,
  56,
  58,
  60,
  62,
  63,
  65,
  67,
  69,
  71,
  72,
  74,
  76,
  78,
  79,
  81,
  83,
  85,
  86,
  88,
  90
];
void tBscore3_5(int num) {
  if (num >= 27) {
    scoreB = 90;
  } else {
    scoreB = scoreBborad3_5[num];
  }
}

List<int> scoreCborad3_5 = [
  39,
  41,
  43,
  44,
  46,
  48,
  50,
  51,
  53,
  55,
  56,
  58,
  60,
  61,
  63,
  65,
  66,
  68,
  70,
  72,
  73,
  75,
  77,
  78,
  80,
  82,
  83,
  85
];
void tCscore3_5(int num) {
  scoreC = scoreBborad3_5[num];
}

List<int> scoreDborad3_5 = [
  38,
  41,
  43,
  45,
  48,
  50,
  53,
  55,
  57,
  60,
  62,
  65,
  67,
  69,
  72,
  74,
  77,
  79,
  81,
  84,
  86,
  89,
];
void tDscore3_5(int num) {
  if (num >= 23) {
    scoreD = 90;
  } else {
    scoreD = scoreDborad3_5[num];
  }
}

List<int> scoreEborad3_5 = [
  39,
  42,
  44,
  47,
  49,
  52,
  54,
  57,
  59,
  62,
  64,
  67,
  69,
  72,
  74,
  77,
  79,
  82,
  84,
  87,
  89,
];
void tEscore3_5(int num) {
  if (num == 21) {
    scoreE = 90;
  } else {
    scoreE = scoreEborad3_5[num];
  }
}

List<int> scoreFborad3_5 = [
  46,
  52,
  58,
  64,
  70,
  76,
  81,
  87,
];

void tFscore3_5(int num) {
  if (num >= 8) {
    scoreF = 90;
  } else {
    scoreF = scoreFborad3_5[num];
  }
}

List<int> scoreGborad3_5 = [
  44,
  50,
  56,
  60,
  66,
  71,
  76,
  82,
  87,
];

void tGscore3_5(int num) {
  if (num >= 9) {
    scoreG = 90;
  } else {
    scoreG = scoreGborad3_5[num];
  }
}

List<int> scoreHborad3_5 = [
  39,
  40,
  42,
  43,
  44,
  46,
  47,
  49,
  50,
  51,
  53,
  54,
  55,
  57,
  58,
  59,
  61,
  62,
  63,
  65,
  66,
  68,
  69,
  70,
  72,
  73,
  74,
  76,
  77,
  78,
  80,
  81,
  83,
  84,
  85,
  87,
  88,
];
void tHscore3_5(int num) {
  scoreH = scoreHborad3_5[num];
}

List<int> scoreIborad3_5 = [
  38,
  41,
  43,
  45,
  47,
  49,
  52,
  54,
  56,
  58,
  60,
  63,
  65,
  67,
  69,
  72,
  74,
  76,
  78,
  80,
  83,
  85,
];
void tIscore3_5(int num) {
  scoreI = scoreIborad3_5[num];
}

List<int> scoreJborad3_5 = [39, 44, 48, 53, 58, 63, 67, 72, 77, 82];
void tJscore3_5(int num) {
  scoreJ = scoreJborad3_5[num];
}

List<int> scoreKborad3_5 = [
  0,
  39,
  41,
  42,
  44,
  46,
  47,
  49,
  51,
  52,
  54,
  56,
  57,
  59,
  60,
  62,
  64,
  65,
  67,
  69,
  70,
  72,
  74,
  75,
  77,
  79,
  80,
  82,
  83,
  85,
  87,
];
void tKscore3_5(int num) {
  scoreK = scoreKborad3_5[num];
}

List<int> scoreLborad3_5 = [
  40,
  42,
  44,
  46,
  48,
  50,
  52,
  54,
  55,
  57,
  59,
  61,
  63,
  65,
  67,
  69,
  71,
  73,
  75,
  77,
  78,
  80,
  82,
  84,
  86,
  88,
];

void tLscore3_5(int num) {
  if (numL >= 26) {
    scoreL = 90;
  } else {
    scoreL = scoreLborad3_5[num];
  }
}

List<int> scoreMborad3_5 = [
  39,
  41,
  43,
  44,
  46,
  48,
  49,
  51,
  53,
  54,
  56,
  58,
  60,
  61,
  63,
  65,
  66,
  68,
  70,
  72,
  73,
  75,
  77,
  78,
  80,
  82,
  84,
  85,
];
void tMscore3_5(int num) {
  scoreM = scoreMborad3_5[num];
}

List<int> scoreNborad3_5 = [
  39,
  40,
  41,
  42,
  43,
  44,
  45,
  46,
  47,
  48,
  48,
  49,
  50,
  51,
  52,
  53,
  54,
  55,
  56,
  57,
  58,
  59,
  60,
  61,
  62,
  63,
  64,
  65,
  65,
  66,
  67,
  68,
  69,
  70,
  71,
  72,
  73,
  74,
  75,
  76,
  77,
  78,
  79,
  80,
  81,
  82,
  83,
  84,
  85,
  86,
  87,
  88,
  89,
];

void tNscore3_5(int num) {
  if (num >= 53) {
    scoreN = 90;
  } else {
    scoreN = scoreNborad3_5[num];
  }
}
