import 'package:easy_localization/easy_localization.dart';
import '../home/home_layout.dart';
import '../../shared/translations/local_keys.g.dart';
import '../../shared/widgets/main_check_box.dart';
import '../../shared/widgets/registeration_header.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/widgets/main_button.dart';
import '../../shared/widgets/registration_input_field.dart';
import '../../shared/widgets/secondary_scaffold.dart';
import '../sign_up/sign_up_layout.dart';
import 'cubit/login_cubit.dart';
import '../../shared/config/themes.dart';

part 'login_view.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = '/login-screen';

  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocListener<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state is LoginOpenSignUpState) {
            Navigator.of(context).pushReplacementNamed(SignUpScreen.routeName);
          }
          if (state is LoginLoggedState) {
            Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
          }
        },
        child: const LoginScreenView(),
      ),
    );
  }
}
