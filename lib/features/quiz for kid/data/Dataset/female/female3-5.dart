import 'package:adhd/features/quiz%20for%20kid/data/model/nested_list.dart';

void all3_5FunctionF() {
  tAscore3_5F(listNumP2[0]);
  tBscore3_5F(listNumP2[1]);
  tCscore3_5F(listNumP2[2]);
  tDscore3_5F(listNumP2[3]);
  tEscore3_5F(listNumP2[4]);
  tFscore3_5F(listNumP2[5]);
  tGscore3_5F(listNumP2[6]);
  tHscore3_5F(listNumP2[7]);
  tIscore3_5F(listNumP2[8]);
  tJscore3_5F(listNumP2[9]);
  tKscore3_5F(listNumP2[10]);
  tLscore3_5F(listNumP2[11]);
  tMscore3_5F(listNumP2[12]);
  tNscore3_5F(listNumP2[13]);
}

List<int> scoreAborad3_5 = //الاطفال الاناث من 3 ل5
    [
  39,
  41,
  43,
  46,
  48,
  50,
  52,
  55,
  57,
  59,
  62,
  64,
  66,
  68,
  71,
  73,
  75,
  78,
  80,
  82,
  85,
  87,
  90,
];
void tAscore3_5F(int num) {
  if (num >= 23) {
    scoreA = 90;
  } else {
    scoreA = scoreAborad3_5[num];
  }
}

List<int> scoreBborad3_5 = [
  44,
  46,
  48,
  50,
  52,
  55,
  57,
  59,
  61,
  63,
  66,
  68,
  70,
  72,
  74,
  76,
  79,
  81,
  83,
  85,
  87,
  90,
];
void tBscore3_5F(int num) {
  if (num >= 21) {
    scoreB = 90;
  } else {
    scoreB = scoreBborad3_5[num];
  }
}

List<int> scoreCborad3_5 = [
  41,
  43,
  45,
  48,
  50,
  52,
  55,
  57,
  59,
  62,
  64,
  67,
  69,
  71,
  74,
  76,
  78,
  81,
  83,
  85,
  88,
  90,
];
void tCscore3_5F(int num) {
  if (num >= 21) {
    scoreC = 90;
  } else {
    scoreC = scoreCborad3_5[num];
  }
}

List<int> scoreDborad3_5 = [
  38,
  40,
  42,
  45,
  47,
  49,
  51,
  53,
  55,
  57,
  59,
  61,
  64,
  66,
  68,
  70,
  72,
  74,
  76,
  78,
  80,
  83,
  85,
  87,
  89,
  90,
];
void tDscore3_5F(int num) {
  if (num >= 25) {
    scoreD = 90;
  } else {
    scoreD = scoreDborad3_5[num];
  }
}

List<int> scoreEborad3_5 = [
  41,
  43,
  46,
  48,
  50,
  53,
  55,
  57,
  60,
  62,
  64,
  67,
  69,
  71,
  74,
  76,
  78,
  81,
  83,
  85,
  88,
  90,
];
void tEscore3_5F(int num) {
  scoreE = scoreEborad3_5[num];
}

List<int> scoreFborad3_5 = [46, 52, 59, 65, 71, 78, 84, 90];
void tFscore3_5F(int num) {
  if (num >= 7) {
    scoreF = 90;
  } else {
    scoreF = scoreFborad3_5[num];
  }
}

List<int> scoreGborad3_5 = [44, 49, 55, 60, 65, 71, 76, 82, 87];
void tGscore3_5F(int num) {
  if (num >= 9) {
    scoreG = 90;
  } else {
    scoreG = scoreGborad3_5[num];
  }
}

List<int> scoreHborad3_5 = [
  40,
  42,
  43,
  45,
  47,
  49,
  51,
  52,
  54,
  56,
  58,
  59,
  61,
  63,
  65,
  67,
  68,
  70,
  72,
  74,
  75,
  77,
  79,
  81,
  83,
  84,
  86,
  88,
  90,
];
void tHscore3_5F(int num) {
  if (num >= 28) {
    scoreH = 90;
  } else {
    scoreH = scoreHborad3_5[num];
  }
}

List<int> scoreIborad3_5 = [
  39,
  42,
  45,
  48,
  51,
  54,
  57,
  59,
  62,
  65,
  68,
  71,
  74,
  77,
  80,
  83,
  85,
  88,
  90,
];
void tIscore3_5F(int num) {
  if (num >= 18) {
    scoreI = 90;
  } else {
    scoreI = scoreIborad3_5[num];
  }
}

List<int> scoreJborad3_5 = [
  39,
  44,
  49,
  54,
  59,
  64,
  68,
  73,
  78,
  83,
];
void tJscore3_5F(int num) {
  scoreJ = scoreJborad3_5[num];
}

List<int> scoreKborad3_5 = [
  38,
  40,
  42,
  44,
  46,
  48,
  50,
  52,
  54,
  56,
  58,
  60,
  62,
  64,
  66,
  68,
  70,
  72,
  74,
  76,
  78,
  80,
  82,
  84,
  87,
  89,
  90,
];
void tKscore3_5F(int num) {
  if (num >= 26) {
    scoreK = 90;
  } else {
    scoreK = scoreKborad3_5[num];
  }
}

List<int> scoreLborad3_5 = [
  41,
  44,
  46,
  49,
  52,
  54,
  57,
  59,
  62,
  65,
  67,
  70,
  72,
  75,
  78,
  80,
  83,
  85,
  88,
  90,
];
void tLscore3_5F(int num) {
  if (num >= 19) {
    scoreL = 90;
  } else {
    scoreL = scoreLborad3_5[num];
  }
}

List<int> scoreMborad3_5 = [
  40,
  43,
  45,
  47,
  49,
  52,
  54,
  56,
  58,
  61,
  63,
  65,
  67,
  70,
  72,
  74,
  76,
  79,
  81,
  83,
  85,
  88,
  90,
];
void tMscore3_5F(int num) {
  if (num >= 22) {
    scoreM = 90;
  } else {
    scoreM = scoreMborad3_5[num];
  }
}

List<int> scoreNborad3_5 = [
  40,
  41,
  43,
  44,
  45,
  47,
  48,
  49,
  50,
  52,
  53,
  54,
  56,
  57,
  58,
  60,
  61,
  62,
  64,
  65,
  66,
  68,
  69,
  70,
  71,
  73,
  74,
  75,
  77,
  78,
  79,
  81,
  82,
  83,
  85,
  86,
  87,
  89,
  90,
];
void tNscore3_5F(int num) {
  if (num >= 38) {
    scoreN = 90;
  } else {
    scoreN = scoreNborad3_5[num];
  }
}
