part of 'add_phone_number_layout.dart';

class AddPhoneNumberScreenView extends StatelessWidget {
  const AddPhoneNumberScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SecondaryScaffold(
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          children: [
            RegisterationHeader(
              title: LocaleKeys.verifyNumber.tr(),
              desc: LocaleKeys.verifyNumberDesc.tr(),
            ),
            Form(
              key: context.read<AddPhoneNumberCubit>().formKey,
              child: TextFormField(
                controller:
                    context.read<AddPhoneNumberCubit>().phonenumberController,
                keyboardType: TextInputType.phone,
                // style: TextStyle(
                //   color: Colors.black,
                //   fontSize: 16.sp,
                //   fontWeight: FontWeight.w600,
                // ),
                decoration: InputDecoration(
                  contentPadding: kContentPadding,
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(60.w),
                    borderSide: BorderSide.none,
                  ),
                  hintText: '0000-0000-0000',
                  hintStyle: TextStyle(
                      color: const Color(0xFF9AAABA), fontSize: 15.sp),
                  prefixIcon: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 12.w),
                        height: 32.h,
                        child: const CircleAvatar(
                          backgroundImage: AssetImage(AppAssets.egypt),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5.w, right: 12.w),
                        child: Text(
                          '+20',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const Line(
                        width: 2,
                        height: 60,
                        color: Color(0xFF7C93AB),
                      ),
                      SizedBox(
                        width: 16.w,
                      ),
                    ],
                  ),
                ),
                validator: (val) {
                  if (val == null || val.isEmpty) {
                    return LocaleKeys.fieldRequired.tr();
                  }
                  return null;
                },
              ),
            ),
            const Spacer(),
            MainButton(
              label: LocaleKeys.verifyNum.tr(),
              onPressed: context.read<AddPhoneNumberCubit>().verify,
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
