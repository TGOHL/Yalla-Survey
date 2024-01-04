import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../config/themes.dart';

class FormLabel extends StatelessWidget {
  final String label;
  final IconData iconData;
  const FormLabel({super.key, required this.label, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Icon(
            iconData,
            color: AppThemes.font,
          ),
          SizedBox(
            width: 8.w,
          ),
          Text(
            label,
            style: TextStyle(
              fontSize: 17.sp,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
