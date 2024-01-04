import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool rememberMe = true;
  LoginCubit() : super(LoginInitial());

  void login() {
    emit(LoginLoggedState());
  }

  void forgetPassword() {
    // todo: forgetPass
  }
  void signUp() {
    emit(LoginOpenSignUpState());
  }

  void toggleRememberMe(bool? val) {
    rememberMe = val ?? !rememberMe;
  }
}
