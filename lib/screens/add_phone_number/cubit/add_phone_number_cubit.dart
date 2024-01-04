import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'add_phone_number_state.dart';

class AddPhoneNumberCubit extends Cubit<AddPhoneNumberState> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController phonenumberController = TextEditingController();

  AddPhoneNumberCubit() : super(AddPhoneNumberInitial());

  void verify() {
    emit(AddVerifyState());
  }
}
