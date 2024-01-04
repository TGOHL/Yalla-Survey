import 'package:easy_localization/easy_localization.dart';
import '../../shared/enums/researcher_type.dart';
import '../../shared/cubit/add_researcher/add_researcher_cubit.dart';
import '../../shared/widgets/title_app_bar.dart';
import '../home/home_layout.dart';
import '../../shared/translations/local_keys.g.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/widgets/main_button.dart';

import 'widgets/add_verification_button.dart';

part 'add_researcher_verifications_view.dart';

class AddResearcherVerificationsScreen extends StatelessWidget {
  static const routeName = '/add-researcher-verification-screen';

  const AddResearcherVerificationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddResearcherCubit, AddResearcherState>(
      listener: (context, state) {
        if (state is AddResearcherDataUploadedState) {
          Navigator.of(context)
              .popUntil((route) => route.settings.name == HomeScreen.routeName);
        }
      },
      child: const AddResearcherVerificationsView(),
    );
  }
}
