import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shared/config/themes.dart';

class ResearcherTypeButton extends StatelessWidget {
  final String imageAsset;
  final String title;
  final String details;
  final Function() onPressed;
  const ResearcherTypeButton({
    Key? key,
    required this.imageAsset,
    required this.title,
    required this.details,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(36.w),
      child: Container(
        padding: EdgeInsets.all(12.w),
        decoration: BoxDecoration(
          color: AppThemes.scaffold,
          borderRadius: BorderRadius.circular(36.w),
        ),
        child: Row(
          children: [
            Container(
              width: 110.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(30.w),
                  right: Radius.circular(2.w),
                ),
              ),
              child: Image.asset(
                imageAsset,
                fit: BoxFit.fitWidth,
              ),
            ),
            SizedBox(
              width: 12.w,
            ),
            Expanded(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: 170.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Text(
                      details,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w500,
                        color: AppThemes.subFont,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
