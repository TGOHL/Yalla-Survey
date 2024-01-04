import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../screens/home/cubit/home_cubit.dart';
import '../enums/earn_type.dart';
import '../models/survey.dart';
import 'main_button.dart';
import '../config/assets.dart';
import '../config/themes.dart';
import '../translations/local_keys.g.dart';
import 'secondary_button.dart';

class SurveyListTile extends StatelessWidget {
  final Survey survey;

  const SurveyListTile({
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
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          backgroundColor: AppThemes.scaffold,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.w),
                          ),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'What will you earn for solving\nthis survey',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20.w),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SizedBox(
                                      height: 16.h,
                                    ),
                                    MainButton(
                                      label: 'Earn Money',
                                      onPressed: () => context
                                          .read<HomeCubit>()
                                          .earn(EarnType.Money),
                                    ),
                                    SizedBox(
                                      height: 18.h,
                                    ),
                                    MainButton(
                                      label: 'Earn Coins',
                                      onPressed: () => context
                                          .read<HomeCubit>()
                                          .earn(EarnType.Coins),
                                    ),
                                    SizedBox(
                                      height: 18.h,
                                    ),
                                    SecondaryButton(
                                      label: 'Watch Ads',
                                      onPressed: () => context
                                          .read<HomeCubit>()
                                          .earn(EarnType.Ads),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6.w),
                    ),
                  ),
                  child: Text(
                    LocaleKeys.openSurvey.tr(),
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
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        AppAssets.coins,
                        color: AppThemes.secondaryDark,
                        width: 10.w,
                      ),
                      SizedBox(
                        width: 3.w,
                      ),
                      Text(
                        '${survey.coins}',
                        style: TextStyle(
                          fontSize: 10.sp,
                          color: AppThemes.secondaryDark,
                        ),
                      )
                    ],
                  ),
                  Text(
                    LocaleKeys.reward.tr(),
                    style: TextStyle(
                      fontSize: 9.5.sp,
                      color: const Color(0xFF7B93AC).withOpacity(0.8),
                    ),
                  ),
                  Text(
                    '\$${survey.reward.toStringAsFixed(2)}',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF10AF4E),
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
