part of 'add_researcher_type_layout.dart';

class AddResearcherView extends StatelessWidget {
  const AddResearcherView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 80.h, horizontal: 24.w),
        child: Column(
          children: [
            Text(
              LocaleKeys.surveyAs.tr(),
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Spacer(
              flex: 2,
            ),
            ResearcherTypeButton(
              imageAsset: AppAssets.company,
              title: LocaleKeys.company.tr(),
              details: LocaleKeys.companyDetails.tr(),
              onPressed: () => context
                  .read<AddResearcherCubit>()
                  .setResearcherType(ResearcherType.Company),
            ),
            const Spacer(
              flex: 1,
            ),
            ResearcherTypeButton(
              imageAsset: AppAssets.individual,
              title: LocaleKeys.individual.tr(),
              details: LocaleKeys.individualDetails.tr(),
              onPressed: () => context
                  .read<AddResearcherCubit>()
                  .setResearcherType(ResearcherType.Individual),
            ),
            const Spacer(
              flex: 5,
            ),
          ],
        ),
      ),
    );
  }
}
