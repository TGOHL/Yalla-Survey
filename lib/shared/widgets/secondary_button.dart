import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../config/themes.dart';

class SecondaryButton extends StatelessWidget {
  final String label;
  final void Function()? onPressed;
  const SecondaryButton({super.key, required this.label, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ScreenUtil().screenWidth,
      height: 56.h,
      child: TextButton(
        onPressed: onPressed,
        style: const ButtonStyle().copyWith(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(60.w),
              side: BorderSide(width: 1.w, color: AppThemes.secondaryLight),
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
          foregroundColor:
              MaterialStateProperty.all<Color>(AppThemes.secondaryLight),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 17.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
