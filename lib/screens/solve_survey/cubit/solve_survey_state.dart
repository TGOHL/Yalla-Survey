part of 'solve_survey_cubit.dart';

@immutable
abstract class SolveSurveyState {}

class SolveSurveyInitial extends SolveSurveyState {}

class SolveSurveyDoneState extends SolveSurveyState {}

class SolveSurveyChangeAnswerState extends SolveSurveyState {
  final String answer;

  SolveSurveyChangeAnswerState(this.answer);
}
