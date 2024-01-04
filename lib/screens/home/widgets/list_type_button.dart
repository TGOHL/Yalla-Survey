import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shared/config/themes.dart';
import '../../../shared/enums/home_list_type.dart';
import '../cubit/home_cubit.dart';

class ListTypeButton extends StatelessWidget {
  final String title;
  final HomeListType listType;
  const ListTypeButton(
      {super.key, required this.title, required this.listType});

  @override
  Widget build(BuildContext context) {
    bool isSelected = context.read<HomeCubit>().listType == listType;
    return GestureDetector(
      onTap: () => context.read<HomeCubit>().switchListType(listType),
      child: Container(
        width: 120.w,
        height: 36.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isSelected ? AppThemes.secondaryDark : Colors.white,
          borderRadius: BorderRadius.circular(36.h),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: isSelected ? Colors.white : AppThemes.secondaryDark,
            fontSize: 13.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
