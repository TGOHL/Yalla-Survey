part of 'verify_phone_code_layout.dart';

class VerifyPhoneCodeScreenView extends StatelessWidget {
  const VerifyPhoneCodeScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 75.w,
      height: 75.w,
      textStyle: TextStyle(
        fontSize: 28.sp,
        color: AppThemes.font,
        fontWeight: FontWeight.w600,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: AppThemes.secondary, width: 4.w),
    );

    return SecondaryScaffold(
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          children: [
            RegisterationHeader(
              title: LocaleKeys.verifyCode.tr(),
              desc: LocaleKeys.verifyCodeDesc.tr(),
            ),
            // todo Add Pin code
            Pinput(
              defaultPinTheme: defaultPinTheme,
              focusedPinTheme: focusedPinTheme,
              validator: (s) {
                return s == '2222' ? null : 'Pin is incorrect';
              },
              pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
              onCompleted: (pin) => print(pin),
            ),
            const Spacer(),
            MainButton(
              label: LocaleKeys.verify.tr(),
              onPressed: context.read<VerifyPhoneCodeCubit>().verify,
            ),
            SizedBox(
              height: 112.h,
            ),
          ],
        ),
      ),
    );
  }
}
