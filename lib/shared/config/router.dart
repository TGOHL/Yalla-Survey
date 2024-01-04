import 'package:flutter/material.dart';

import '../../screens/add_phone_number/add_phone_number_layout.dart';
import '../../screens/add_researcher_info/add_researcher_info_layout.dart';
import '../../screens/add_researcher_type/add_researcher_type_layout.dart';
import '../../screens/add_researcher_verifications/add_researcher_verifications_layout.dart';
import '../../screens/edit_profile/edit_profile_layout.dart';
import '../../screens/home/home_layout.dart';
import '../../screens/login/login_layout.dart';
import '../../screens/onboarding/onboarding_layout.dart';
import '../../screens/sign_up/sign_up_layout.dart';
import '../../screens/solve_survey/solve_survey_layout.dart';
import '../../screens/verify_phone_code/verify_phone_code_layout.dart';
import '../../screens/welcome/welcome_layout.dart';

class AppRouter {
  static Map<String, Widget Function(dynamic)> router() {
    return {
      '/': (ctx) => const WelcomeScreen(),
      LoginScreen.routeName: (ctx) => const LoginScreen(),
      SignUpScreen.routeName: (ctx) => const SignUpScreen(),
      AddPhoneNumberScreen.routeName: (ctx) => const AddPhoneNumberScreen(),
      VerifyPhoneCodeScreen.routeName: (ctx) => const VerifyPhoneCodeScreen(),
      EditProfileScreen.routeName: (ctx) => const EditProfileScreen(),
      HomeScreen.routeName: (ctx) => const HomeScreen(),
      SolveSurveyScreen.routeName: (ctx) => const SolveSurveyScreen(),
      OnboardingScreen.routeName: (ctx) => const OnboardingScreen(),
      AddResearcherTypeScreen.routeName: (ctx) =>
          const AddResearcherTypeScreen(),
      AddResearcherInfoScreen.routeName: (ctx) =>
          const AddResearcherInfoScreen(),
      AddResearcherVerificationsScreen.routeName: (ctx) =>
          const AddResearcherVerificationsScreen(),
    };
  }
}
