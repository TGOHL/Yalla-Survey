import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../config/constants.dart';
import '../config/themes.dart';

class MainDropdown extends StatelessWidget {
  final String hint;
  final void Function(dynamic) onChanged;
  final List<dynamic> items;
  const MainDropdown({
    Key? key,
    required this.hint,
    required this.onChanged,
    required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12.h),
      child: ButtonTheme(
        alignedDropdown: true,
        child: DropdownButtonFormField(
          hint: Text(hint),
          decoration: InputDecoration(
            contentPadding: kContentPadding.copyWith(left: 6.h, right: 8.h),
            filled: true,
            fillColor: AppThemes.scaffold,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(60.w),
              borderSide: BorderSide.none,
            ),
            hintStyle:
                TextStyle(color: const Color(0xFF9AAABA), fontSize: 15.sp),
          ),
          dropdownColor: AppThemes.scaffold,
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20.h),
            top: Radius.circular(8.h),
          ),
          isExpanded: true,
          items: items
              .map((e) => DropdownMenuItem(value: e, child: Text('$e')))
              .toList(),
          onChanged: onChanged,
        ),
      ),
    );
  }
}
