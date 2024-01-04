part of 'sign_up_layout.dart';

class SignUpScreenView extends StatelessWidget {
  const SignUpScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SecondaryScaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          children: [
            RegisterationHeader(
              title: LocaleKeys.signUpTitle.tr(),
              desc: LocaleKeys.signUpDesc.tr(),
            ),
            Form(
              key: context.read<SignUpCubit>().formKey,
              child: Column(
                children: [
                  RegistrationInputField(
                    controller: context.read<SignUpCubit>().usernameController,
                    hintText: LocaleKeys.username.tr(),
                    icon: const Icon(Icons.person_outline_rounded),
                    keyboardType: TextInputType.name,
                    validator: (val) {
                      if (val == null || val.isEmpty) {
                        return LocaleKeys.fieldRequired.tr();
                      }
                      return null;
                    },
                  ),
                  RegistrationInputField(
                    controller: context.read<SignUpCubit>().emailController,
                    hintText: LocaleKeys.email.tr(),
                    icon: const Icon(Icons.email_outlined),
                    keyboardType: TextInputType.emailAddress,
                    validator: (val) {
                      if (val == null || val.isEmpty) {
                        return LocaleKeys.fieldRequired.tr();
                      }
                      return null;
                    },
                  ),
                  RegistrationInputField(
                    controller: context.read<SignUpCubit>().passwordController,
                    hintText: LocaleKeys.password.tr(),
                    icon: const Icon(Icons.lock_outline_rounded),
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    validator: (val) {
                      if (val == null || val.isEmpty) {
                        return LocaleKeys.fieldRequired.tr();
                      }
                      return null;
                    },
                  ),
                  RegistrationInputField(
                    controller: context.read<SignUpCubit>().confirmController,
                    hintText: LocaleKeys.confirm.tr(),
                    icon: const Icon(Icons.lock_outline_rounded),
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    validator: (val) {
                      if (val == null || val.isEmpty) {
                        return LocaleKeys.fieldRequired.tr();
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 7.h,
            ),
            Row(
              children: [
                MainCheckBox(
                  value: context.watch<SignUpCubit>().isTermsAccepted,
                  label: LocaleKeys.accept.tr(),
                  onChanged: context.read<SignUpCubit>().toggleAcceptTerms,
                ),
                TextButton(
                  onPressed: context.read<SignUpCubit>().acceptTerms,
                  child: Text(
                    LocaleKeys.terms.tr(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40.h,
            ),
            MainButton(
              label: LocaleKeys.signUp.tr(),
              onPressed: context.read<SignUpCubit>().signUp,
            ),
            SizedBox(
              height: 24.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  LocaleKeys.haveAccount.tr(),
                  style: const TextStyle(color: Colors.white),
                ),
                TextButton(
                  onPressed: context.read<SignUpCubit>().login,
                  child: Text(
                    LocaleKeys.login.tr(),
                    style: const TextStyle(
                      color: AppThemes.secondary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
