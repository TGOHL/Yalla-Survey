part of 'add_researcher_cubit.dart';

@immutable
abstract class AddResearcherState {}

class AddResearcherInitial extends AddResearcherState {}

class AddResearcherDataUploadedState extends AddResearcherState {}

class AddResearcherTypeAddedState extends AddResearcherState {
  final ResearcherType researcherType;

  AddResearcherTypeAddedState(this.researcherType);
}

class AddResearcherNavigatedState extends AddResearcherState {
  final String route;

  AddResearcherNavigatedState(this.route);
}

class AddResearcherImageChangedState extends AddResearcherState {
  final File? file;

  AddResearcherImageChangedState(this.file);
}
