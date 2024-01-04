import 'package:easy_localization/easy_localization.dart';
import 'widgets/researcher_screen.dart';
import 'widgets/user_screen.dart';
import '../onboarding/onboarding_layout.dart';
import '../solve_survey/solve_survey_layout.dart';
import 'widgets/list_type_button.dart';

import '../../shared/enums/home_list_type.dart';
import '../../shared/translations/local_keys.g.dart';


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../shared/config/assets.dart';
import '../../shared/config/themes.dart';
import 'cubit/home_cubit.dart';

part 'home_view.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home-screen';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeCubit, HomeState>(
      listener: (context, state) {
        if (state is HomeAddNewSurveyState) {
          Navigator.of(context).pushNamed(OnboardingScreen.routeName);
        }
        if (state is HomeEarnState) {
          Navigator.of(context).pushNamed(SolveSurveyScreen.routeName);
        }
      },
      child: const HomeView(),
    );
  }
}
