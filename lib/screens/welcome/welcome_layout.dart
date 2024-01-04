import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/config/assets.dart';
import '../../shared/translations/local_keys.g.dart';
import '../../shared/widgets/main_button.dart';
import '../../shared/widgets/secondary_scaffold.dart';
import '../login/login_layout.dart';
import 'cubit/welcome_cubit.dart';

part 'welcome_view.dart';

class WelcomeScreen extends StatelessWidget {
  static const routeName = '/welocme-screen';

  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WelcomeCubit(),
      child: BlocListener<WelcomeCubit, WelcomeState>(
        listener: (context, state) {
          if (state is WelcomeGetStartedState) {
            Navigator.of(context).pushNamed(LoginScreen.routeName);
          }
        },
        child: const WelcomeView(),
      ),
    );
  }
}
