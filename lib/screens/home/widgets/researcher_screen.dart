import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../shared/config/assets.dart';
import '../../../shared/widgets/main_button.dart';
import '../../../shared/widgets/my_surveys_list_tile.dart';

import '../cubit/home_cubit.dart';

class ResearcherScreen extends StatelessWidget {
  const ResearcherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final items = context.read<HomeCubit>().mySurveys;
    if (items.isEmpty) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 280.h,
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  right: 32.w,
                  left: 32.w,
                  child: Container(
                    width: 327.w,
                    height: 260.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40.w),
                    ),
                    padding: EdgeInsets.all(26.h),
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      'Find what will People Think About\nyour Service Or Product',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 60.h,
                  child: Image.asset(
                    AppAssets.addSurvey,
                    width: 240.w,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50.h,
          ),
          MainButton(
            label: 'Add Survey',
            width: 240.w,
            onPressed: context.read<HomeCubit>().addNewSurvey,
          ),
          SizedBox(
            height: 90.h,
          ),
        ],
      );
    }
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (_, index) => MySurveysListTile(survey: items[index]),
    );
  }
}
