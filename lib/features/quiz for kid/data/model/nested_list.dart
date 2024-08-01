int numA = 0;
int scoreA = 0;
int numB = 0;
int scoreB = 0;
int numC = 0;
int scoreC = 0;
int numD = 0;
int scoreD = 0;
int numE = 0;
int scoreE = 0;
int numF = 0;
int scoreF = 0;
int numG = 0;
int scoreG = 0;
int numH = 0;
int scoreH = 0;
int numI = 0;
int scoreI = 0;
int numJ = 0;
int scoreJ = 0;
int numK = 0;
int scoreK = 0;
int numL = 0;
int scoreL = 0;
int numM = 0;
int scoreM = 0;
int numN = 0;
int scoreN = 0;

List classification = [
  "A) Opposition",
  "B) Cognitive problems",
  "C) Hyperactivity",
  "D) Anxiety and shyness",
  "E) Perfectionism",
  "F) Hyperactivity",
  "G) Hyperactivity",
  "H) Hyperactivity",
  "I) Hyperactivity",
  "J) Hyperactivity",
  "K) Hyperactivity",
  "L) Hyperactivity",
  "M) Hyperactivity",
  "N) Hyperactivity"
];

List subtitleClass = [
  "It involves breaking rules, problems with those around him.",
  "Indicates inattention, problems with organization, difficulty completing tasks",
  "Inability to sit still for a period of time, feeling of discomfort and agitation",
  "anxiety and fears, shy, withdrawn.",
  "Goals higher than their capabilities, obsessive at work, highly sensitive",
  "F) Hyperactivity",
  "G) Hyperactivity",
  "H) Hyperactivity",
  "I) Hyperactivity",
  "J) Hyperactivity",
  "K) Hyperactivity",
  "L) Hyperactivity",
  "M) Hyperactivity",
  "N) Hyperactivity"
];
List<int> allScore = [
  scoreA,
  scoreB,
  scoreC,
  scoreD,
  scoreE,
  scoreF,
  scoreG,
  scoreH,
  scoreI,
  scoreJ,
  scoreK,
  scoreL,
  scoreM,
  scoreN,
];

List<List<int>> nestedList = [
  listA,
  listB,
  listC,
  listD,
  listE,
  listF,
  listG,
  listH,
  listI,
  listJ,
  listK,
  listL,
  listM,
  listN,
];
List<int> listNumP2 = [
  numA,
  numB,
  numC,
  numD,
  numE,
  numF,
  numG,
  numH,
  numI,
  numJ,
  numK,
  numL,
  numM,
  numN,
];
List<int> listA = [1, 8, 11, 21, 31, 40, 57, 61, 67, 70];
List<int> listB = [2, 9, 12, 19, 22, 29, 41, 50, 51, 58, 71, 74];
List<int> listC = [3, 13, 23, 28, 32, 42, 52, 59, 80];
List<int> listD = [4, 14, 24, 33, 43, 53, 60, 65];
List<int> listE = [5, 15, 25, 34, 44, 54, 64];
List<int> listF = [6, 16, 26, 35, 72];
List<int> listG = [7, 17, 27, 36, 46, 73];
List<int> listH = [9, 19, 29, 38, 45, 48, 55, 56, 63, 69, 76, 78];
List<int> listI = [18, 28, 37, 38, 62, 66, 68];
List<int> listJ = [47, 75, 77];
List<int> listK = [18, 28, 37, 38, 47, 62, 66, 68, 75, 77];
List<int> listL = [9, 10, 20, 29, 30, 41, 50, 71, 79];
List<int> listM = [3, 23, 39, 42, 49, 55, 59, 76, 80];
List<int> listN = [
  3,
  9,
  10,
  20,
  23,
  29,
  30,
  39,
  41,
  42,
  49,
  50,
  55,
  59,
  71,
  76,
  79,
  80
];
void resetnumandScore() {
  listNumP2[0] = 0;
  scoreA = 0;
  listNumP2[1] = 0;
  scoreB = 0;
  listNumP2[2] = 0;
  scoreC = 0;
  listNumP2[3] = 0;
  scoreD = 0;
  listNumP2[4] = 0;
  scoreE = 0;
  listNumP2[5] = 0;
  scoreF = 0;
  listNumP2[6] = 0;
  scoreG = 0;
  listNumP2[7] = 0;
  scoreH = 0;
  listNumP2[8] = 0;
  scoreI = 0;
  listNumP2[9] = 0;
  scoreJ = 0;
  listNumP2[10] = 0;
  scoreK = 0;
  listNumP2[11] = 0;
  scoreL = 0;
  listNumP2[12] = 0;
  scoreM = 0;
  listNumP2[13] = 0;
  scoreN = 0;
}
