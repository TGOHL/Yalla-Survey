part of 'solve_survey_layout.dart';

class SolveSurveyView extends StatelessWidget {
  const SolveSurveyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(112.h),
        child: const TitleAppBar(
          title: 'Survey Name',
          height: 112,
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16.h),
            child: const QuestionNumberViewer(
              currentQuestion: 1,
              totalQuestions: 8,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Expanded(
            child: ScrollConfiguration(
              behavior: NoGlowListViewBehavior(),
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(16.h),
                  child: Text(
                    'dsad sad sad sad sad sadsadsa ds a fef adf dfg dsfg dsf daf sadf sad sad sad sad sad asd asd asd sa as fsaf saf saf asf asf saf saf saf saf sa fsaf saf asf saf saf as fasdsad sad sad sad sad sadsadsa ds a fef adf dfg dsfg dsf daf sadf sad sad sad sad sad asd asd asd sa as fsaf saf saf asf asf saf saf saf saf sa fsaf saf asf saf saf as fas',
                    style:
                        TextStyle(fontSize: 23.sp, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 32.h),
            decoration: BoxDecoration(
              color: AppThemes.secondary,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(44.w),
              ),
              boxShadow: const [
                BoxShadow(
                  offset: Offset(0, -3),
                  blurRadius: 6,
                  color: Colors.black38,
                ),
              ],
            ),
            child: BlocBuilder<SolveSurveyCubit, SolveSurveyState>(
              buildWhen: (previous, current) =>
                  current is SolveSurveyChangeAnswerState,
              builder: (context, state) {
                return Column(
                  children: [
                    AnswerOption(
                      optionNumber: 'A',
                      answerText: 'answer A',
                      selectedOption:
                          context.read<SolveSurveyCubit>().selectedOption,
                      onTap: context.read<SolveSurveyCubit>().changeAnswer,
                    ),
                    AnswerOption(
                      optionNumber: 'B',
                      answerText: 'answer B',
                      selectedOption:
                          context.read<SolveSurveyCubit>().selectedOption,
                      onTap: context.read<SolveSurveyCubit>().changeAnswer,
                    ),
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
