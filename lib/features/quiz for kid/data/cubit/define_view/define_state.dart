import 'package:equatable/equatable.dart';

abstract class DefineTheKidState extends Equatable {
  @override
  List<Object?> get props => [];
}

class DefineTheKidInitial extends DefineTheKidState {}

class DefineTheKidData extends DefineTheKidState {
  final int age;
  final bool isMale;

  DefineTheKidData({required this.age, required this.isMale});

  @override
  List<Object?> get props => [age, isMale];
}
