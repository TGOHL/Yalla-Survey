part of 'onboarding_layout.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pageDecoration = PageDecoration(
      imagePadding: EdgeInsets.only(top: 60.h),
      pageColor: Colors.white,
      bodyAlignment: Alignment.topCenter,
      imageAlignment: Alignment.bottomCenter,
      titleTextStyle: TextStyle(
        fontSize: 28.sp,
        fontWeight: FontWeight.w600,
      ),
      bodyTextStyle: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 16.sp,
        color: AppThemes.subFont,
      ),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: IntroductionScreen(
        globalBackgroundColor: Colors.white,
        pages: [
          PageViewModel(
            title: "Section 1",
            body: """Lorem ipsum dolor sit amet, consectetuer
            dipiscing elit, sed diam nonummy
            nibh euismod tincidunt ut laoreet dolore
            magna aliquam erat volutpat. Ut wisi enim
            ad minim veniam, quis nostrud exerci tation""",
            image: Center(
              child: Image.asset(
                AppAssets.onboarding1,
              ),
            ),
            decoration: pageDecoration,
          ),
          PageViewModel(
            title: "Section 2",
            body: """Lorem ipsum dolor sit amet, consectetuer
            dipiscing elit, sed diam nonummy
            nibh euismod tincidunt ut laoreet dolore
            magna aliquam erat volutpat. Ut wisi enim
            ad minim veniam, quis nostrud exerci tation""",
            image: Center(
              child: Image.asset(
                AppAssets.onboarding2,
              ),
            ),
            decoration: pageDecoration,
          ),
          PageViewModel(
            title: "Section 3",
            body: """Lorem ipsum dolor sit amet, consectetuer
            dipiscing elit, sed diam nonummy
            nibh euismod tincidunt ut laoreet dolore
            magna aliquam erat volutpat. Ut wisi enim
            ad minim veniam, quis nostrud exerci tation""",
            image: Center(
              child: Image.asset(
                AppAssets.onboarding3,
              ),
            ),
            decoration: pageDecoration,
          ),
        ],
        onDone: () {
          Navigator.of(context)
              .pushReplacementNamed(AddResearcherTypeScreen.routeName);
        },
        showBackButton: true,
        back: const Icon(Icons.navigate_before_rounded),
        next: const Icon(Icons.navigate_next_rounded),
        done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
        dotsDecorator: DotsDecorator(
          size: const Size.square(10.0),
          activeSize: const Size(20.0, 10.0),
          activeColor: AppThemes.secondary,
          color: Colors.black26,
          spacing: const EdgeInsets.symmetric(horizontal: 3.0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
        ),
      ),
    );
  }
}
