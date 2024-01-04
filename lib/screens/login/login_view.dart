part of 'login_layout.dart';

class LoginScreenView extends StatelessWidget {
  const LoginScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SecondaryScaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          children: [
            RegisterationHeader(
              title: LocaleKeys.loginTitle.tr(),
              desc: LocaleKeys.loginDesc.tr(),
            ),
            Form(
              key: context.read<LoginCubit>().formKey,
              child: Column(
                children: [
                  RegistrationInputField(
                    controller: context.read<LoginCubit>().usernameController,
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
                    controller: context.read<LoginCubit>().passwordController,
                    hintText: LocaleKeys.password.tr(),
                    icon: const Icon(Icons.lock_outline_rounded),
                    obscureText: true,
                    keyboardType: TextInputType.text,
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
            MainButton(
              label: LocaleKeys.login.tr(),
              onPressed: context.read<LoginCubit>().login,
            ),
            Row(
              children: [
                MainCheckBox(
                  value: context.watch<LoginCubit>().rememberMe,
                  label: LocaleKeys.rememberMe.tr(),
                  onChanged: context.read<LoginCubit>().toggleRememberMe,
                ),
                const Spacer(),
                TextButton(
                  onPressed: context.read<LoginCubit>().forgetPassword,
                  child: Text(
                    LocaleKeys.forgetPassword.tr(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 200.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  LocaleKeys.noAccount.tr(),
                  style: const TextStyle(color: Colors.white),
                ),
                TextButton(
                  onPressed: context.read<LoginCubit>().signUp,
                  child: Text(
                    LocaleKeys.signUp.tr(),
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
