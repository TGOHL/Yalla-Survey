part of 'add_researcher_verifications_layout.dart';

class AddResearcherVerificationsView extends StatelessWidget {
  const AddResearcherVerificationsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isCompany = context.read<AddResearcherCubit>().researcherType ==
        ResearcherType.Company;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(112.h),
        child: TitleAppBar(
          title: LocaleKeys.docsRequired.tr(),
          height: 112,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(24.w, 0, 24.w, 48.h),
        child: BlocBuilder<AddResearcherCubit, AddResearcherState>(
          buildWhen: (_, current) => current is AddResearcherImageChangedState,
          builder: (context, state) {
            return Column(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (!isCompany)
                        AddVerificationButton(
                          label: LocaleKeys.nationalIdentity.tr(),
                          file: context.read<AddResearcherCubit>().idFile,
                          onImageChanged:
                              context.read<AddResearcherCubit>().changeIdFile,
                        ),
                      if (isCompany)
                        AddVerificationButton(
                          label: LocaleKeys.commercialRegister.tr(),
                          file:
                              context.read<AddResearcherCubit>().commercialFile,
                          onImageChanged: context
                              .read<AddResearcherCubit>()
                              .changeCommercialFile,
                        ),
                      if (isCompany) SizedBox(height: 40.h),
                      if (isCompany)
                        AddVerificationButton(
                          label: LocaleKeys.taxCard.tr(),
                          file: context.read<AddResearcherCubit>().taxFile,
                          onImageChanged:
                              context.read<AddResearcherCubit>().changeTaxFile,
                        ),
                    ],
                  ),
                ),
                MainButton(
                  label: LocaleKeys.finish.tr(),
                  onPressed: context
                      .read<AddResearcherCubit>()
                      .uploadNewResearcherInfo,
                ),
                SizedBox(
                  height: 20.h,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
