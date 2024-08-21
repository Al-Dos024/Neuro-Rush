// lib/features/quiz_for_kid/presentation/cubit/define_the_kid_cubit.dart
import 'package:adhd/features/quiz%20for%20kid/data/cubit/define_view/define_state.dart';
import 'package:bloc/bloc.dart';

class DefineTheKidCubit extends Cubit<DefineTheKidState> {
  DefineTheKidCubit() : super(DefineTheKidData(age: 12, isMale: true));

  void increaseAge() {
    final state = this.state;
    if (state is DefineTheKidData) {
      if (state.age < 17) {
        emit(DefineTheKidData(
          age: state.age + 1,
          isMale: state.isMale,
        ));
      }
    }
  }

  void decreaseAge() {
    final state = this.state;
    if (state is DefineTheKidData) {
      if (state.age > 3) {
        emit(DefineTheKidData(
          age: state.age - 1,
          isMale: state.isMale,
        ));
      }
    }
  }

  void setGender(bool isMale) {
    final state = this.state;
    if (state is DefineTheKidData) {
      emit(DefineTheKidData(
        age: state.age,
        isMale: isMale,
      ));
    }
  }
}
