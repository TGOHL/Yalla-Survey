import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../config/themes.dart';

class MainCheckBox extends StatelessWidget {
  final bool value;
  final String label;
  final void Function(bool?)? onChanged;
  const MainCheckBox({
    super.key,
    required this.value,
    required this.label,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: value,
          onChanged: onChanged,
          activeColor: AppThemes.secondary,
          side: BorderSide(
            color: AppThemes.secondary,
            width: 2.w,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.w),
          ),
        ),
        Transform(
          transform: Matrix4.translationValues(-4.w, 0, 0),
          child: Text(
            label,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
