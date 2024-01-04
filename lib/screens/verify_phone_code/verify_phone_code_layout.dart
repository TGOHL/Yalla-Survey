import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

import '../../shared/config/themes.dart';
import '../../shared/translations/local_keys.g.dart';
import '../../shared/widgets/main_button.dart';
import '../../shared/widgets/registeration_header.dart';
import '../../shared/widgets/secondary_scaffold.dart';
import '../edit_profile/edit_profile_layout.dart';
import 'cubit/verify_phone_code_cubit.dart';

part 'verify_phone_code_view.dart';

class VerifyPhoneCodeScreen extends StatelessWidget {
  static const routeName = '/verify-phone-code-screen';

  const VerifyPhoneCodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => VerifyPhoneCodeCubit(),
      child: BlocListener<VerifyPhoneCodeCubit, VerifyPhoneCodeState>(
        listener: (context, state) {
          if (state is VerifyCodeState) {
            Navigator.of(context).pushNamed(EditProfileScreen.routeName);
          }
        },
        child: const VerifyPhoneCodeScreenView(),
      ),
    );
  }
}
