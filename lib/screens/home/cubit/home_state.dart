part of 'home_cubit.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeAddNewSurveyState extends HomeState {}

class HomeOpenServeyPopupState extends HomeState {
  final Survey survey;

  HomeOpenServeyPopupState(this.survey);
}

class HomeListTypeSwitchedState extends HomeState {
  final HomeListType listType;

  HomeListTypeSwitchedState(this.listType);
}

class HomeEarnState extends HomeState {
  final EarnType earnType;

  HomeEarnState(this.earnType);
}
