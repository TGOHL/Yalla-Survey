import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shared/config/themes.dart';

class AnswerOption extends StatelessWidget {
  final String optionNumber;
  final String answerText;
  final String? selectedOption;
  final Function(String) onTap;
  const AnswerOption(
      {super.key,
      required this.optionNumber,
      required this.answerText,
      required this.onTap,
      required this.selectedOption});

  @override
  Widget build(BuildContext context) {
    final bool isSelected = optionNumber == selectedOption;
    return GestureDetector(
      onTap: () {
        if (!isSelected) onTap(optionNumber);
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 6.h),
        width: ScreenUtil().screenWidth,
        height: 56.h,
        decoration: BoxDecoration(
          color: isSelected ? AppThemes.secondaryDark : AppThemes.scaffold,
          border: Border.all(width: isSelected ? 2 : 0, color: Colors.white),
          borderRadius: BorderRadius.circular(56.h),
        ),
        // TODO run this and edit colors
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Text(
                optionNumber,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: !isSelected ? AppThemes.secondary : AppThemes.scaffold,
                  fontSize: 18.sp,
                ),
              ),
            ),
            Text(
              answerText,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: !isSelected ? AppThemes.secondary : AppThemes.scaffold,
                fontSize: 18.sp,
              ),
            )
          ],
        ),
      ),
    );
  }
}
