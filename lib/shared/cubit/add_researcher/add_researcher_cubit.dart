import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import '../../enums/researcher_type.dart';

part 'add_researcher_state.dart';

class AddResearcherCubit extends Cubit<AddResearcherState> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController bioController = TextEditingController();
  File? idFile;
  File? taxFile;
  File? commercialFile;
  ResearcherType? researcherType;
  AddResearcherCubit() : super(AddResearcherInitial());

  void init() {
    researcherType = null;
    idFile = null;
    taxFile = null;
    commercialFile = null;
    nameController.clear();
    bioController.clear();
  }

  void changeCommercialFile(File? file) {
    commercialFile = file;
    emit(AddResearcherImageChangedState(file));
  }

  void changeIdFile(File? file) {
    idFile = file;
    emit(AddResearcherImageChangedState(file));
  }

  void changeTaxFile(File? file) {
    taxFile = file;
    emit(AddResearcherImageChangedState(file));
  }

  void setResearcherType(ResearcherType rt) {
    researcherType = rt;
    emit(AddResearcherTypeAddedState(rt));
  }

  void nextPage(String route) {
    emit(AddResearcherNavigatedState(route));
  }

  void uploadNewResearcherInfo() {
    emit(AddResearcherDataUploadedState());
  }

  @override
  Future<void> close() {
    nameController.dispose();
    bioController.dispose();
    idFile = null;
    taxFile = null;
    commercialFile = null;
    return super.close();
  }
}
