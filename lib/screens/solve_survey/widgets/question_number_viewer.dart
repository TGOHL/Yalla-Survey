import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../cubit/solve_survey_cubit.dart';
import '../../../shared/config/themes.dart';

class QuestionNumberViewer extends StatelessWidget {
  /// Current Question Index
  final int currentQuestion;
  final int totalQuestions;

  const QuestionNumberViewer(
      {super.key, required this.currentQuestion, required this.totalQuestions});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            IconButton(
              onPressed: context.read<SolveSurveyCubit>().previousQuesion,
              icon: const Icon(
                Icons.arrow_back_ios_new_rounded,
                color: AppThemes.secondary,
              ),
            ),
            const Spacer(),
            Text(
              '$currentQuestion',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 23.sp,
              ),
            ),
            Text(
              ' / $totalQuestions',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 23.sp,
                color: AppThemes.subFont,
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: context.read<SolveSurveyCubit>().nextQuesion,
              icon: const Icon(
                Icons.arrow_forward_ios_rounded,
                color: AppThemes.secondary,
              ),
            )
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(
            totalQuestions,
            (index) => Container(
              width: ScreenUtil().screenWidth * .58 / totalQuestions,
              height: 4.h,
              margin: EdgeInsets.symmetric(
                  horizontal: ScreenUtil().screenWidth * .06 / totalQuestions),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.h),
                color: index < currentQuestion
                    ? AppThemes.secondary
                    : const Color(0xFF9C9C9C),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
