import 'package:adhd/constants.dart';
import 'package:adhd/features/quiz%20for%20kid/data/cubit/define_view/define_cubit.dart';
import 'package:adhd/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:adhd/features/quiz%20for%20kid/presentation/widgets/gender_selection.dart';
import 'package:adhd/features/quiz%20for%20kid/presentation/widgets/age_selector.dart';
import 'package:adhd/features/quiz%20for%20kid/presentation/widgets/submit_button.dart';
import 'package:adhd/features/quiz%20for%20kid/presentation/widgets/details_text_14.dart';
import 'package:adhd/features/quiz%20for%20kid/presentation/widgets/subtitle_18.dart';
import 'package:adhd/features/quiz%20for%20kid/presentation/widgets/title_gender_22.dart';
import 'package:adhd/generated/l10n.dart';

class DefineTheKid extends StatelessWidget {
  const DefineTheKid({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = MyApp.themeNotifier.value == ThemeMode.dark;

    return BlocProvider(
      create: (context) => DefineTheKidCubit(),
      child: Scaffold(
        backgroundColor: isDarkMode ? kBlackcolor_1 :kWhitecolor,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TitleGender22(text: S.of(context).enter_data_title),
              DetailsText14(text: S.of(context).enter_data_subtitle),
              Subtitle18(text: S.of(context).enter_gender_title),
              const GenderSelection(),
              const SizedBox(height: 20),
              Subtitle18(text: S.of(context).enter_age_subtitle),
              const AgeSelector(),
              const SizedBox(height: 40),
              const SubmitButton(),
            ],
          ),
        ),
      ),
    );
  }
}
