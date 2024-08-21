// lib/features/quiz_for_kid/presentation/widgets/submit_button.dart
import 'package:adhd/features/quiz%20for%20kid/data/cubit/define_view/define_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:adhd/features/quiz%20for%20kid/presentation/widgets/Icon_with_lable_button.dart';

import '../../data/cubit/define_view/define_cubit.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DefineTheKidCubit, DefineTheKidState>(
      builder: (context, state) {
        if (state is DefineTheKidData) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconWithLableButton(
                age: state.age,
                isMale: state.isMale,
              ),
            ],
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
