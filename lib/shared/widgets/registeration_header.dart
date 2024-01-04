import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../config/assets.dart';

class RegisterationHeader extends StatelessWidget {
  final String title;
  final String desc;
  const RegisterationHeader(
      {super.key, required this.title, required this.desc});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: ScreenUtil().screenWidth,
          height: 50.h,
        ),
        Image.asset(
          AppAssets.logo,
          width: 130.w,
        ),
        SizedBox(
          height: 20.h,
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 22.sp,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        Text(
          desc,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 50.h,
        ),
      ],
    );
  }
}
