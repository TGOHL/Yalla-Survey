part of 'edit_profile_layout.dart';

class EditProfileView extends StatelessWidget {
  const EditProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(112.h),
        child: TitleAppBar(
          title: LocaleKeys.editProfile.tr(),
          height: 112,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.h),
        child: Column(
          children: [
            FormLabel(
              label: LocaleKeys.profile.tr(),
              iconData: Icons.sort_rounded,
            ),
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    // TODO: show date picker
                  },
                  child: Container(
                    padding: kContentPadding.copyWith(left: 20.h, right: 12.h),
                    margin: EdgeInsets.only(bottom: 12.h),
                    decoration: BoxDecoration(
                      color: AppThemes.scaffold,
                      borderRadius: BorderRadius.circular(60.w),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          LocaleKeys.birthday.tr(),
                          style: TextStyle(
                            color: const Color(0xFF707070),
                            fontSize: 15.sp,
                          ),
                        ),
                        const Icon(Icons.arrow_drop_down)
                      ],
                    ),
                  ),
                ),
                MainDropdown(
                  hint: LocaleKeys.sex.tr(),
                  onChanged: (val) {},
                  items: const [
                    'Male',
                    'Female',
                  ],
                ),
                MainDropdown(
                  hint: LocaleKeys.location.tr(),
                  onChanged: (val) {},
                  items: const [
                    'Alexandria',
                    'Assiut',
                    'Aswan',
                    'Beheira',
                    'Bani Suef',
                    'Cairo',
                    'Daqahliya',
                    'Damietta',
                    'Fayyoum',
                    'Gharbiya',
                    'Giza',
                    'Helwan',
                    'Ismailia',
                    'Kafr El Sheikh',
                    'Luxor',
                    'Marsa Matrouh',
                    'Minya',
                    'Monofiya',
                    'New Valley',
                    'North Sinai',
                    'Port Said',
                    'Qalioubiya',
                    'Qena',
                    'Red Sea',
                    'Sharqiya',
                    'Sohag',
                    'South Sinai',
                    'Suez',
                  ],
                ),
                MainDropdown(
                  hint: LocaleKeys.education.tr(),
                  onChanged: (val) {},
                  items: const [
                    'Average',
                    'Above Average',
                    'High',
                    'Advanced',
                    'Other'
                  ],
                ),
                MainDropdown(
                  hint: LocaleKeys.status.tr(),
                  onChanged: (val) {},
                  items: const [
                    'Single',
                    'Engage',
                    'Married',
                    'Devorced',
                    'Widowed'
                  ],
                ),
                MainDropdown(
                  hint: LocaleKeys.income.tr(),
                  onChanged: (val) {},
                  items: const [
                    'No Income',
                    '1 - 1000',
                    '1000 - 4000',
                    '4000 - 8000',
                    '8000 - 15000',
                    '15000 - 25000',
                    'More Than 25000'
                  ],
                ),
                MainDropdown(
                  hint: LocaleKeys.nationality.tr(),
                  onChanged: (val) {},
                  items: const [
                    'Egypt',
                  ],
                ),
              ],
            ),
            const Spacer(),
            MainButton(
              label: "Done",
              onPressed: context.read<EditProfileCubit>().done,
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
