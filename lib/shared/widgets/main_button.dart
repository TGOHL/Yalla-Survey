import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainButton extends StatelessWidget {
  final String label;
  final void Function()? onPressed;
  final double? width;
  const MainButton(
      {super.key, required this.label, this.onPressed, this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? ScreenUtil().screenWidth,
      height: 56.h,
      child: ElevatedButton(
        onPressed: onPressed,
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
