import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/config/constants.dart';
import '../../shared/config/themes.dart';
import '../../shared/translations/local_keys.g.dart';
import '../../shared/widgets/form_label.dart';
import '../../shared/widgets/main_button.dart';
import '../../shared/widgets/main_dropdown.dart';
import '../../shared/widgets/title_app_bar.dart';
import '../home/home_layout.dart';
import 'cubit/edit_profile_cubit.dart';

part 'edit_profile_view.dart';

class EditProfileScreen extends StatelessWidget {
  static const routeName = '/edit-profile-screen';

  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EditProfileCubit(),
      child: BlocListener<EditProfileCubit, EditProfileState>(
        listener: (context, state) {
          if (state is EditProfileDoneState) {
            Navigator.of(context).pushNamed(HomeScreen.routeName);
          }
        },
        child: const EditProfileView(),
      ),
    );
  }
}
