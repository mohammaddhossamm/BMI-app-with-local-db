import 'dart:math';
import 'package:bmi_app/manager/app_manegement_cubit/app_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BmiCubit extends Cubit<BmiStates> {
  BmiCubit() : super(BmiIntState());
  static BmiCubit get(context) => BlocProvider.of(context);
  int height = 160;
  int weight = 60;
  int age = 25;
  bool genderIsMale = true;

  void genderMale() {
    genderIsMale = true;
    emit(BmiChangeGender());
  }

  void genderFemale() {
    genderIsMale = false;
    emit(BmiChangeGender());
  }

  void changeHeight(double value) {
    height = value.round();
    emit(BmiChangeHeight());
  }

  void add({required bool isWeight}) {
    if (isWeight == true) {
      if (weight < 250) {
        weight++;
        emit(BmiChangeWeight());
      }
    } else {
      if (age < 100) {
        age++;
        emit(BmiChangeAge());
      }
    }
  }

  void mins({required bool isWeight}) {
    if (isWeight == true) {
      if (weight > 40) {
        weight--;
        emit(BmiChangeWeight());
      }
    } else {
      if (age > 13) {
        age--;
        emit(BmiChangeAge());
      }
    }
  }

  double bmiCalculate(int height, int weight) {
    double result = weight / pow(height / 100, 2);
    return result;
  }
}
