part of 'sign_up_cubit.dart';

@immutable
abstract class SignUpState {}

class SignUpInitial extends SignUpState {}

class SignUpOpenLoginState extends SignUpState {}

class SignUpSignedState extends SignUpState {}
