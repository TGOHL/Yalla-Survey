import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import '../../../shared/enums/earn_type.dart';
import '../../../shared/enums/survey_status.dart';
import '../../../shared/config/assets.dart';
import '../../../shared/enums/home_list_type.dart';
import '../../../shared/models/survey.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeListType listType = HomeListType.User;

  final List<Survey> _surveys = [
    Survey(
      id: "1",
      title: 'Doctor Service Survey',
      subtitle: 'Survey in Specific State',
      imageAsset: AppAssets.cat1,
      coins: 500,
      reward: 200.00,
      completedSurveys: 20,
      ownerId: 'sada',
      requiredSurveys: 200,
      status: SurveyStatus.Online,
      statusMsg: '',
    ),
    Survey(
      id: "2",
      title: 'Doctor Service Survey',
      subtitle: 'Survey in Specific State',
      imageAsset: AppAssets.cat2,
      coins: 500,
      reward: 200.00,
      completedSurveys: 20,
      ownerId: 'sada',
      requiredSurveys: 200,
      status: SurveyStatus.Online,
      statusMsg: '',
    ),
    Survey(
      id: "3",
      title: 'Doctor Service Survey',
      subtitle: 'Survey in Specific State',
      imageAsset: AppAssets.cat3,
      coins: 500,
      reward: 300.00,
      completedSurveys: 20,
      ownerId: 'sada',
      requiredSurveys: 200,
      status: SurveyStatus.Online,
      statusMsg: '',
    ),
    Survey(
      id: "4",
      title: 'Doctor Service Survey',
      subtitle: 'Survey in Specific State',
      imageAsset: AppAssets.cat5,
      coins: 500,
      reward: 300.00,
      completedSurveys: 20,
      ownerId: 'sada',
      requiredSurveys: 200,
      status: SurveyStatus.Online,
      statusMsg: '',
    ),
    Survey(
      id: "5",
      title: 'Doctor Service Survey',
      subtitle: 'Survey in Specific State',
      imageAsset: AppAssets.cat1,
      coins: 500,
      reward: 400.00,
      completedSurveys: 20,
      ownerId: 'sada',
      requiredSurveys: 200,
      status: SurveyStatus.Online,
      statusMsg: '',
    ),
    Survey(
      id: "6",
      title: 'Doctor Service Survey',
      subtitle: 'Survey in Specific State',
      imageAsset: AppAssets.cat3,
      coins: 500,
      reward: 400.00,
      completedSurveys: 20,
      ownerId: 'sada',
      requiredSurveys: 200,
      status: SurveyStatus.Online,
      statusMsg: '',
    ),
    Survey(
      id: "11",
      title: 'Doctor Service Survey',
      subtitle: 'Survey in Specific State',
      imageAsset: AppAssets.cat2,
      coins: 500,
      reward: 500.00,
      completedSurveys: 20,
      ownerId: 'sada',
      requiredSurveys: 200,
      status: SurveyStatus.Online,
      statusMsg: '',
    ),
    Survey(
      id: "12",
      title: 'Doctor Service Survey',
      subtitle: 'Survey in Specific State',
      imageAsset: AppAssets.cat6,
      coins: 500,
      reward: 500.00,
      completedSurveys: 20,
      ownerId: 'sada',
      requiredSurveys: 200,
      status: SurveyStatus.Online,
      statusMsg: '',
    ),
    Survey(
      id: "14",
      title: 'Doctor Service Survey',
      subtitle: 'Survey in Specific State',
      imageAsset: AppAssets.cat4,
      coins: 500,
      reward: 600.00,
      completedSurveys: 20,
      ownerId: 'sada',
      requiredSurveys: 200,
      status: SurveyStatus.Online,
      statusMsg: '',
    ),
    Survey(
      id: "111",
      title: 'Doctor Service Survey',
      subtitle: 'Survey in Specific State',
      imageAsset: AppAssets.cat2,
      coins: 500,
      reward: 600.00,
      completedSurveys: 20,
      ownerId: 'sada',
      requiredSurveys: 200,
      status: SurveyStatus.Online,
      statusMsg: '',
    ),
  ];
  final List<Survey> _mySurveys = [
    // Survey(
    //   id: "1",
    //   title: 'Doctor Service Survey',
    //   subtitle: 'Survey in Specific State',
    //   imageAsset: AppAssets.cat1,
    //   coins: 500,
    //   reward: 200.00,
    //   completedSurveys: 2000,
    //   ownerId: 'sada',
    //   requiredSurveys: 20000,
    //   status: SurveyStatus.Online,
    //   statusMsg: '',
    // ),
  ];
  List<Survey> get surveys => [..._surveys];
  List<Survey> get mySurveys => [..._mySurveys];

  HomeCubit() : super(HomeInitial());

  void switchListType(HomeListType lt) {
    if (listType == lt) return;
    listType = lt;
    emit(HomeListTypeSwitchedState(lt));
  }

  void openSurveyPopUp(Survey survey) {
    emit(HomeOpenServeyPopupState(survey));
  }

  void addNewSurvey() {
    emit(HomeAddNewSurveyState());
  }

  void earn(EarnType et) {
    switch (et) {
      case EarnType.Money:
        emit(HomeEarnState(et));
        break;
      case EarnType.Coins:
        emit(HomeEarnState(et));
        break;
      case EarnType.Ads:
        break;
      default:
    }
  }
}
