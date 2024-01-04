import 'package:easy_localization/easy_localization.dart';

import '../add_researcher_info/add_researcher_info_layout.dart';
import '../../shared/enums/researcher_type.dart';
import '../../shared/cubit/add_researcher/add_researcher_cubit.dart';

import '../../shared/translations/local_keys.g.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/config/assets.dart';

import 'widgets/researcher_type_button.dart';

part 'add_researcher_type_view.dart';

class AddResearcherTypeScreen extends StatelessWidget {
  static const routeName = '/add-researcher-type-screen';

  const AddResearcherTypeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<AddResearcherCubit>().init();

    return BlocListener<AddResearcherCubit, AddResearcherState>(
      listener: (context, state) {
        if (state is AddResearcherTypeAddedState) {
          Navigator.of(context).pushNamed(AddResearcherInfoScreen.routeName);
        }
      },
      child: const AddResearcherView(),
    );
  }
}
