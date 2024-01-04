part of 'home_layout.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(166.h),
        child: Container(
          height: 166.h,
          padding: EdgeInsets.only(top: ScreenUtil().statusBarHeight + 12.h),
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                offset: Offset(0, 3),
                blurRadius: 8,
              ),
            ],
            gradient: const LinearGradient(
              colors: AppThemes.appbarGradient,
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            ),
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(26.w)),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.w),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: SizedBox(width: 40.w),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          LocaleKeys.hello.tr(),
                          style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.white70,
                          ),
                        ),
                        Text(
                          'Ibrahem adel',
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.notifications_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 13.h,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10.w,
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          LocaleKeys.totalCoins.tr(),
                          style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.white70,
                          ),
                        ),
                        Row(
                          children: [
                            Image.asset(
                              AppAssets.coins,
                              width: 17.w,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 4.w, right: 7.w),
                              child: Text(
                                '89,000',
                                style: TextStyle(
                                  fontSize: 20.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                width: 15.w,
                                height: 15.w,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(4.w),
                                ),
                                child: Icon(
                                  Icons.add_rounded,
                                  size: 15.w,
                                  color: AppThemes.secondary,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      body: BlocBuilder<HomeCubit, HomeState>(
        buildWhen: (previous, current) {
          if (current is HomeListTypeSwitchedState) return true;
          return false;
        },
        builder: (context, state) {
          bool isResearcher =
              context.read<HomeCubit>().listType == HomeListType.Researcher;
          bool showTitle =
              isResearcher && context.read<HomeCubit>().mySurveys.isNotEmpty ||
                  !isResearcher && context.read<HomeCubit>().surveys.isNotEmpty;
          return Padding(
            padding: EdgeInsets.fromLTRB(11.w, 28.h, 11.w, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ListTypeButton(
                      title: LocaleKeys.surveys.tr(),
                      listType: HomeListType.User,
                    ),
                    ListTypeButton(
                      title: LocaleKeys.researcher.tr(),
                      listType: HomeListType.Researcher,
                    ),
                  ],
                ),
                SizedBox(
                  height: 12.h,
                ),
                if (showTitle)
                  Text(
                    isResearcher
                        ? LocaleKeys.mySurvey.tr()
                        : LocaleKeys.allSurveys.tr(),
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                SizedBox(
                  height: 12.h,
                ),
                if (!isResearcher) const Expanded(child: UserScreen()),
                if (isResearcher) const Expanded(child: ResearcherScreen()),
              ],
            ),
          );
        },
      ),
    );
  }
}
