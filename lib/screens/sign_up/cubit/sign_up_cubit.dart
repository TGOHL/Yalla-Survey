import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmController = TextEditingController();
  bool isTermsAccepted = true;
  SignUpCubit() : super(SignUpInitial());

  void login() {
    emit(SignUpOpenLoginState());
  }

  void forgetPassword() {
    // todo: forgetPass
  }
  void signUp() {
    // todo: push to phone verfiy
    emit(SignUpSignedState());
  }

  void acceptTerms() {}

  void toggleAcceptTerms(bool? val) {
    isTermsAccepted = val ?? !isTermsAccepted;
  }
}
