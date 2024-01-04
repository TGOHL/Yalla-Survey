import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../config/constants.dart';

class RegistrationInputField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final Widget icon;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final bool obscureText;
  const RegistrationInputField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.icon,
    this.validator,
    this.obscureText = false,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6.h),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          contentPadding: kContentPadding,
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(60.w),
            borderSide: BorderSide.none,
          ),
          hintText: hintText,
          hintStyle: TextStyle(color: const Color(0xFF9AAABA), fontSize: 15.sp),
          suffixIcon: Padding(
            padding: EdgeInsets.only(right: 10.w),
            child: icon,
          ),
        ),
        validator: validator,
      ),
    );
  }
}
