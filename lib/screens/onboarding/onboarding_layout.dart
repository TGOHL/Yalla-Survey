import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../shared/config/assets.dart';
import '../../shared/config/themes.dart';
import '../add_researcher_type/add_researcher_type_layout.dart';
import 'cubit/onboarding_cubit.dart';

part 'onboarding_view.dart';

class OnboardingScreen extends StatelessWidget {
  static const routeName = '/on-boarding-screen';

  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnboardingCubit(),
      child: BlocListener<OnboardingCubit, OnboardingState>(
        listener: (context, state) {},
        child: const OnboardingView(),
      ),
    );
  }
}
