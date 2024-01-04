// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class User {
  final String id;
  final String name;
  final String email;
  final String phoneNumber;
  final String birthday;
  final int age;
  final String gender;
  final String location;
  final String education;
  final String socialState;
  final String averageIncome;
  final String nationaltiy;
  final List<String> mySurveys;
  final List<String> solvedSurveys;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.birthday,
    required this.age,
    required this.gender,
    required this.location,
    required this.education,
    required this.socialState,
    required this.averageIncome,
    required this.nationaltiy,
    required this.mySurveys,
    required this.solvedSurveys,
  });

  User copyWith({
    String? id,
    String? name,
    String? email,
    String? phoneNumber,
    String? birthday,
    int? age,
    String? gender,
    String? location,
    String? education,
    String? socialState,
    String? averageIncome,
    String? nationaltiy,
    List<String>? mySurveys,
    List<String>? solvedSurveys,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      birthday: birthday ?? this.birthday,
      age: age ?? this.age,
      gender: gender ?? this.gender,
      location: location ?? this.location,
      education: education ?? this.education,
      socialState: socialState ?? this.socialState,
      averageIncome: averageIncome ?? this.averageIncome,
      nationaltiy: nationaltiy ?? this.nationaltiy,
      mySurveys: mySurveys ?? this.mySurveys,
      solvedSurveys: solvedSurveys ?? this.solvedSurveys,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'email': email,
      'phoneNumber': phoneNumber,
      'birthday': birthday,
      'age': age,
      'gender': gender,
      'location': location,
      'education': education,
      'socialState': socialState,
      'averageIncome': averageIncome,
      'nationaltiy': nationaltiy,
      'mySurveys': mySurveys,
      'solvedSurveys': solvedSurveys,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'] as String,
      name: map['name'] as String,
      email: map['email'] as String,
      phoneNumber: map['phoneNumber'] as String,
      birthday: map['birthday'] as String,
      age: map['age'] as int,
      gender: map['gender'] as String,
      location: map['location'] as String,
      education: map['education'] as String,
      socialState: map['socialState'] as String,
      averageIncome: map['averageIncome'] as String,
      nationaltiy: map['nationaltiy'] as String,
      mySurveys: List<String>.from(map['mySurveys'] as List<String>),
      solvedSurveys: List<String>.from(map['solvedSurveys'] as List<String>),
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) =>
      User.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'User(id: $id, name: $name, email: $email, phoneNumber: $phoneNumber, birthday: $birthday, age: $age, gender: $gender, location: $location, education: $education, socialState: $socialState, averageIncome: $averageIncome, nationaltiy: $nationaltiy, mySurveys: $mySurveys, solvedSurveys: $solvedSurveys)';
  }

  @override
  bool operator ==(covariant User other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.email == email &&
        other.phoneNumber == phoneNumber &&
        other.birthday == birthday &&
        other.age == age &&
        other.gender == gender &&
        other.location == location &&
        other.education == education &&
        other.socialState == socialState &&
        other.averageIncome == averageIncome &&
        other.nationaltiy == nationaltiy &&
        listEquals(other.mySurveys, mySurveys) &&
        listEquals(other.solvedSurveys, solvedSurveys);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        email.hashCode ^
        phoneNumber.hashCode ^
        birthday.hashCode ^
        age.hashCode ^
        gender.hashCode ^
        location.hashCode ^
        education.hashCode ^
        socialState.hashCode ^
        averageIncome.hashCode ^
        nationaltiy.hashCode ^
        mySurveys.hashCode ^
        solvedSurveys.hashCode;
  }
}
