import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'verify_phone_code_state.dart';

class VerifyPhoneCodeCubit extends Cubit<VerifyPhoneCodeState> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController phonenumberController = TextEditingController();

  VerifyPhoneCodeCubit() : super(VerifyPhoneCodeInitial());

  void verify() {
    emit(VerifyCodeState());
  }
}
