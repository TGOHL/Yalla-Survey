import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../config/themes.dart';

class TitleAppBar extends StatelessWidget {
  final String title;
  final int height;
  const TitleAppBar({super.key, required this.title, this.height = 112});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height.h,
      padding: EdgeInsets.only(top: ScreenUtil().statusBarHeight),
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, 3),
            blurRadius: 8,
          ),
        ],
        gradient: const LinearGradient(
          colors: AppThemes.appbarGradient,
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(26.w)),
      ),
      alignment: Alignment.center,
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
