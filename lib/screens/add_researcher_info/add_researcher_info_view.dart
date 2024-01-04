part of 'add_researcher_info_layout.dart';

class AddResearcherInfoView extends StatelessWidget {
  const AddResearcherInfoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isCompany = context.read<AddResearcherCubit>().researcherType ==
        ResearcherType.Company;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(112.h),
        child: TitleAppBar(
          title: isCompany
              ? LocaleKeys.companyData.tr()
              : LocaleKeys.yourData.tr(),
          height: 112,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 24.w),
        child: Form(
          key: context.read<AddResearcherCubit>().formKey,
          child: Column(
            children: [
              FormLabel(
                label: isCompany
                    ? LocaleKeys.companyInfo.tr()
                    : LocaleKeys.yourInfo.tr(),
                iconData: Icons.sort_rounded,
              ),
              MainInputField(
                controller: context.read<AddResearcherCubit>().nameController,
                hintText: isCompany
                    ? LocaleKeys.companyName.tr()
                    : LocaleKeys.yourName.tr(),
                validator: (val) {
                  if (val == null || val.isEmpty) {
                    return LocaleKeys.fieldRequired.tr();
                  }
                  return null;
                },
              ),
              MainInputField(
                controller: context.read<AddResearcherCubit>().bioController,
                hintText: isCompany
                    ? LocaleKeys.companyBio.tr()
                    : LocaleKeys.yourBio.tr(),
                validator: (val) {
                  if (val == null || val.isEmpty) {
                    return LocaleKeys.fieldRequired.tr();
                  }
                  return null;
                },
              ),
              const Spacer(),
              MainButton(
                label: LocaleKeys.continueNext.tr(),
                onPressed: () => context
                    .read<AddResearcherCubit>()
                    .nextPage(AddResearcherVerificationsScreen.routeName),
              ),
              SizedBox(
                height: 42.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
