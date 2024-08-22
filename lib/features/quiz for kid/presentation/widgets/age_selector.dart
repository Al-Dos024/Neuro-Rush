// lib/features/quiz_for_kid/presentation/widgets/age_selector.dart
import 'package:adhd/features/quiz%20for%20kid/data/cubit/define_view/define_cubit.dart';
import 'package:adhd/features/quiz%20for%20kid/data/cubit/define_view/define_state.dart';
import 'package:adhd/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:adhd/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class AgeSelector extends StatelessWidget {
  const AgeSelector({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = MyApp.themeNotifier.value == ThemeMode.dark;

    return BlocBuilder<DefineTheKidCubit, DefineTheKidState>(
      builder: (context, state) {
        if (state is DefineTheKidData) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(),
                  FloatingActionButton(
                    shape: const CircleBorder(),
                    heroTag: "btn1",
                    backgroundColor: kGraycolor_2,
                    onPressed: () {
                      context.read<DefineTheKidCubit>().increaseAge();
                    },
                    mini: true,
                    child: const Icon(
                      Icons.add,
                    ),
                  ),
                  const Spacer(),
                  Container(
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                      color: kPrimerycolor.withOpacity(0.5),
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: kBluecolor_2,
                        ),
                        child: Center(
                          child: Text(
                            '${state.age}',
                            style: GoogleFonts.kodchasan(
                              fontSize: 32,
                              color: isDarkMode ? kBlackcolor_1 : kWhitecolor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  FloatingActionButton(
                    shape: const CircleBorder(),
                    heroTag: "btn2",
                    backgroundColor: kGraycolor_2,
                    onPressed: () {
                      context.read<DefineTheKidCubit>().decreaseAge();
                    },
                    mini: true,
                    child: const Icon(
                      Icons.remove,
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ],
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
