part of 'welcome_layout.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SecondaryScaffold(
      body: Stack(
        children: [
          Positioned(
            top: -36.h,
            right: 0,
            height: 540.h,
            child: Image.asset(AppAssets.logo),
          ),
          Positioned(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            LocaleKeys.welcome.tr(),
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            LocaleKeys.appName.tr(),
                            style: TextStyle(
                              fontSize: 28.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            LocaleKeys.welcomeDesc.tr(),
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: Colors.white54,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Image.asset(
                        AppAssets.logo,
                        width: 86.w,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 60.h,
                  ),
                  MainButton(
                    label: LocaleKeys.getStarted.tr(),
                    onPressed: context.read<WelcomeCubit>().getStarted,
                  ),
                  SizedBox(
                    height: 48.h,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
