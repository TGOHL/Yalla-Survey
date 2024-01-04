import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/config/themes.dart';
import '../../shared/utils/no_glow_listview_behavior.dart';
import '../../shared/widgets/title_app_bar.dart';
import 'cubit/solve_survey_cubit.dart';
import 'widgets/answer_option.dart';
import 'widgets/question_number_viewer.dart';

part 'solve_survey_view.dart';

class SolveSurveyScreen extends StatelessWidget {
  static const routeName = '/solve-survey-screen';

  const SolveSurveyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SolveSurveyCubit(),
      child: BlocListener<SolveSurveyCubit, SolveSurveyState>(
        listener: (context, state) {},
        child: const SolveSurveyView(),
      ),
    );
  }
}
