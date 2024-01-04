import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shared/config/assets.dart';
import '../../../shared/widgets/survey_list_tile.dart';
import '../cubit/home_cubit.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final items = context.read<HomeCubit>().surveys;
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
                      'There are no survey available\nStay Toned',
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
            height: 100.h,
          ),
        ],
      );
    }
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (_, index) => SurveyListTile(survey: items[index]),
    );
  }
}
