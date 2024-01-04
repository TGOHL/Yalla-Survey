import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'solve_survey_state.dart';

class SolveSurveyCubit extends Cubit<SolveSurveyState> {
  String? selectedOption;
  SolveSurveyCubit() : super(SolveSurveyInitial());

  void done() {
    emit(SolveSurveyDoneState());
  }

  void changeAnswer(String ans) {
    selectedOption = ans;
    emit(SolveSurveyChangeAnswerState(ans));
  }

  void nextQuesion() {}

  void previousQuesion() {}
}
