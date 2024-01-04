import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../models/survey.dart';
import '../config/themes.dart';
import '../translations/local_keys.g.dart';

class MySurveysListTile extends StatelessWidget {
  final Survey survey;

  const MySurveysListTile({
    super.key,
    required this.survey,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(12.w, 8.h, 20.w, 8.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.w),
      ),
      margin: EdgeInsets.only(bottom: 6.h),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6.w),
            child: Image.asset(
              survey.imageAsset,
              fit: BoxFit.cover,
              width: 75.w,
              height: 75.h,
            ),
          ),
          SizedBox(
            width: 16.w,
          ),
          Expanded(
            flex: 5,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  survey.title,
                  overflow: TextOverflow.ellipsis,
                  style:
                      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
                ),
                Text(
                  survey.subtitle,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 9.sp,
                    fontWeight: FontWeight.w500,
                    color: AppThemes.font.withOpacity(0.5),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6.w),
                    ),
                  ),
                  child: Text(
                    LocaleKeys.statistics.tr(),
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 10.sp,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 8.w,
          ),
          Expanded(
            flex: 2,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    LocaleKeys.completed.tr(),
                    style: TextStyle(
                      fontSize: 9.5.sp,
                      color: const Color(0xFF7B93AC).withOpacity(0.8),
                    ),
                  ),
                  Text(
                    '${survey.completedSurveys}',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF7B93AC).withOpacity(0.8),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
