import 'package:adhd/features/quiz%20for%20kid/data/cubit/define_view/define_cubit.dart';
import 'package:adhd/features/quiz%20for%20kid/data/cubit/define_view/define_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:adhd/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:adhd/generated/l10n.dart';

import '../../../../main.dart';

class GenderSelection extends StatelessWidget {
  const GenderSelection({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = MyApp.themeNotifier.value == ThemeMode.dark;

    return BlocBuilder<DefineTheKidCubit, DefineTheKidState>(
      builder: (context, state) {
        if (state is DefineTheKidData) {
          return Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    context.read<DefineTheKidCubit>().setGender(true);
                  },
                  child: Container(
                    height: 190,
                    width: 150,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: kMalecolor.withOpacity(0.25),
                          spreadRadius: 0,
                          blurRadius: 4,
                          offset: const Offset(0, 4),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(25),
                      color: state.isMale
                          ? kMalecolor.withOpacity(0.5)
                          : isDarkMode
                              ? kBlackcolor_2
                              : kWhitecolor_1,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          S.of(context).boy,
                          style: GoogleFonts.kodchasan(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Image(
                          image: AssetImage("assets/images/male.png"),
                          height: 125,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    context.read<DefineTheKidCubit>().setGender(false);
                  },
                  child: Container(
                    height: 190,
                    width: 150,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: kFemalecolor.withOpacity(0.25),
                          spreadRadius: 0,
                          blurRadius: 4,
                          offset: const Offset(0, 4),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(25),
                      color: state.isMale
                          ? isDarkMode
                              ? kBlackcolor_2
                              : kWhitecolor_1
                          : kFemalecolor.withOpacity(0.5),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          S.of(context).girl,
                          style: GoogleFonts.kodchasan(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Image(
                          image: AssetImage("assets/images/female.png"),
                          height: 125,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
