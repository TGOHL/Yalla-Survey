import 'package:easy_localization/easy_localization.dart';
import '../add_phone_number/add_phone_number_layout.dart';
import '../../shared/translations/local_keys.g.dart';
import '../../shared/widgets/main_check_box.dart';
import '../../shared/widgets/registeration_header.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/widgets/main_button.dart';
import '../../shared/widgets/registration_input_field.dart';
import '../../shared/widgets/secondary_scaffold.dart';
import '../login/login_layout.dart';
import 'cubit/sign_up_cubit.dart';
import '../../shared/config/themes.dart';

part 'sign_up_view.dart';

class SignUpScreen extends StatelessWidget {
  static const routeName = '/sign-up-screen';

  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(),
      child: BlocListener<SignUpCubit, SignUpState>(
        listener: (context, state) {
          if (state is SignUpOpenLoginState) {
            Navigator.of(context).pushReplacementNamed(LoginScreen.routeName);
          }
          if (state is SignUpSignedState) {
            Navigator.of(context).pushNamed(AddPhoneNumberScreen.routeName);
          }
        },
        child: const SignUpScreenView(),
      ),
    );
  }
}
