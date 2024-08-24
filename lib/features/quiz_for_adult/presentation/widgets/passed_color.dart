import 'package:adhd/features/quiz%20for%20kid/data/model/nested_list.dart';
import 'package:flutter/material.dart';

class PassedColorList extends StatelessWidget {
  const PassedColorList({
    super.key,
    required this.isPassed,
  });
  final int lim = 60;
  final bool isPassed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          scoreA >= lim ? "A score is $scoreA " : "",
        ),
        Text(
          scoreB >= lim ? "B score is $scoreB " : "",
        ),
        Text(
          scoreC >= lim ? "C score is $scoreC " : "",
        ),
        Text(
          scoreD >= lim ? "D score is $scoreD " : "",
        ),
        Text(
          scoreE >= lim ? "E score is $scoreE " : "",
        ),
        Text(
          scoreF >= lim ? "F score is $scoreF " : "",
        ),
        Text(
          scoreG >= lim ? "G score is $scoreG " : "",
        ),
        Text(
          scoreH >= lim ? "H score is $scoreH " : "",
        ),
        Text(
          scoreI >= lim ? "I score is $scoreI " : "",
        ),
        Text(
          scoreJ >= lim ? "J score is $scoreJ " : "",
        ),
        Text(
          scoreK >= lim ? "K score is $scoreK " : "",
        ),
        Text(
          scoreL >= lim ? "L score is $scoreL " : "",
        ),
        Text(
          scoreM >= lim ? "M score is $scoreM " : "",
        ),
        Text(
          scoreN >= lim ? "N score is $scoreN " : "",
        ),
      ],
    );
  }
}

//  Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Text(
//           scoreA >= lim ? "obstinacy score is $scoreA " : "",
//         ),
//         Text(
//           scoreB >= lim ? "Lack of attention score is $scoreB " : "",
//           style: const TextStyle(fontSize: 20),
//         ),
//         Text(
//           scoreC >= lim ? "Hyperactivity score is $scoreC " : "",
//         ),
//         Text(
//           scoreD >= lim ? "anxiety score is $scoreD " : "",
//         ),
//         Text(
//           scoreE >= lim ? "Perfection score is $scoreE " : "",
//         ),
//         Text(
//           scoreF >= lim ? "social score is $scoreF " : "",
//         ),
//         Text(
//           scoreG >= lim ? "Physical score is $scoreG " : "",
//         ),
//         Text(scoreH >= lim ? "attention deficit score is $scoreH " : "",
//             style: const TextStyle(fontSize: 20)),
//         Text(scoreI >= lim ? "Arousal and impulsivity score is $scoreI " : "",
//             style: const TextStyle(fontSize: 16)),
//         Text(
//           scoreJ >= lim ? "Passion score is $scoreJ " : "",
//         ),
//         Text(scoreK >= lim ? "General indicator  score is $scoreK " : "",
//             style: const TextStyle(fontSize: 20)),
//         Text(
//           scoreL >= lim ? "DMS 5 score is $scoreL " : "",
//         ),
//         Text(scoreM >= lim ? "Hyperactivity DMS 5 score is $scoreM " : "",
//             style: const TextStyle(fontSize: 15)),
//         Text(scoreN >= lim ? "mixed DMS 5 score is $scoreN " : "",
//             style: const TextStyle(fontSize: 20)),
//       ],
//     );
//   }
// }
