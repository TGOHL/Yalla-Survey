import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/config/assets.dart';
import '../../shared/config/constants.dart';
import '../../shared/translations/local_keys.g.dart';
import '../../shared/widgets/line.dart';
import '../../shared/widgets/main_button.dart';
import '../../shared/widgets/registeration_header.dart';
import '../../shared/widgets/secondary_scaffold.dart';
import '../verify_phone_code/verify_phone_code_layout.dart';
import 'cubit/add_phone_number_cubit.dart';

part 'add_phone_number_view.dart';

class AddPhoneNumberScreen extends StatelessWidget {
  static const routeName = '/add-phone-number-screen';

  const AddPhoneNumberScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddPhoneNumberCubit(),
      child: BlocListener<AddPhoneNumberCubit, AddPhoneNumberState>(
        listener: (context, state) {
          if (state is AddVerifyState) {
            Navigator.of(context).pushNamed(VerifyPhoneCodeScreen.routeName);
          }
        },
        child: const AddPhoneNumberScreenView(),
      ),
    );
  }
}
