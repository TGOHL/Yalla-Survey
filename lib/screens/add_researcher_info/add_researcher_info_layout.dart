import 'package:easy_localization/easy_localization.dart';
import '../add_researcher_verifications/add_researcher_verifications_layout.dart';
import '../../shared/enums/researcher_type.dart';
import '../../shared/widgets/main_input_field.dart';
import '../../shared/cubit/add_researcher/add_researcher_cubit.dart';
import '../../shared/widgets/form_label.dart';
import '../../shared/widgets/title_app_bar.dart';

import '../../shared/translations/local_keys.g.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/widgets/main_button.dart';

part 'add_researcher_info_view.dart';

class AddResearcherInfoScreen extends StatelessWidget {
  static const routeName = '/add-researcher-info-screen';

  const AddResearcherInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddResearcherCubit, AddResearcherState>(
      listener: (context, state) {
        if (state is AddResearcherNavigatedState) {
          Navigator.of(context).pushNamed(state.route);
        }
      },
      child: WillPopScope(
          onWillPop: () async {
            context.read<AddResearcherCubit>().init();
            return true;
          },
          child: const AddResearcherInfoView()),
    );
  }
}
