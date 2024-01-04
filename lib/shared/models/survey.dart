// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import '../enums/survey_status.dart';

class Survey {
  final String id;
  final String ownerId;
  final SurveyStatus status;
  final String? statusMsg;
  final String title;
  final String subtitle;
  final String imageAsset;
  final int coins;
  final int completedSurveys;
  final int requiredSurveys;
  final double reward;
  Survey({
    required this.id,
    required this.ownerId,
    required this.status,
    this.statusMsg,
    required this.title,
    required this.subtitle,
    required this.imageAsset,
    required this.coins,
    required this.completedSurveys,
    required this.requiredSurveys,
    required this.reward,
  });

  Survey copyWith({
    String? id,
    String? ownerId,
    SurveyStatus? status,
    String? statusMsg,
    String? title,
    String? subtitle,
    String? imageAsset,
    int? coins,
    int? completedSurveys,
    int? requiredSurveys,
    double? reward,
  }) {
    return Survey(
      id: id ?? this.id,
      ownerId: ownerId ?? this.ownerId,
      status: status ?? this.status,
      statusMsg: statusMsg ?? this.statusMsg,
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      imageAsset: imageAsset ?? this.imageAsset,
      coins: coins ?? this.coins,
      completedSurveys: completedSurveys ?? this.completedSurveys,
      requiredSurveys: requiredSurveys ?? this.requiredSurveys,
      reward: reward ?? this.reward,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ownerId': ownerId,
      'status': SurveyStatus.values.indexOf(status),
      'statusMsg': statusMsg,
      'title': title,
      'subtitle': subtitle,
      'imageAsset': imageAsset,
      'coins': coins,
      'completedSurveys': completedSurveys,
      'requiredSurveys': requiredSurveys,
      'reward': reward,
    };
  }

  factory Survey.fromMap(Map<String, dynamic> map) {
    return Survey(
      id: map['id'] as String,
      ownerId: map['ownerId'] as String,
      status: SurveyStatus.values[map['status'] as int],
      statusMsg: map['statusMsg'] as String,
      title: map['title'] as String,
      subtitle: map['subtitle'] as String,
      imageAsset: map['imageAsset'] as String,
      coins: map['coins'] as int,
      completedSurveys: map['completedSurveys'] as int,
      requiredSurveys: map['requiredSurveys'] as int,
      reward: map['reward'] as double,
    );
  }

  String toJson() => json.encode(toMap());

  factory Survey.fromJson(String source) =>
      Survey.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Survey(id: $id, ownerId: $ownerId, status: $status, statusMsg: $statusMsg, title: $title, subtitle: $subtitle, imageAsset: $imageAsset, coins: $coins, completedSurveys: $completedSurveys, requiredSurveys: $requiredSurveys, reward: $reward)';
  }

  @override
  bool operator ==(covariant Survey other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.ownerId == ownerId &&
        other.status == status &&
        other.statusMsg == statusMsg &&
        other.title == title &&
        other.subtitle == subtitle &&
        other.imageAsset == imageAsset &&
        other.coins == coins &&
        other.completedSurveys == completedSurveys &&
        other.requiredSurveys == requiredSurveys &&
        other.reward == reward;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        ownerId.hashCode ^
        status.hashCode ^
        statusMsg.hashCode ^
        title.hashCode ^
        subtitle.hashCode ^
        imageAsset.hashCode ^
        coins.hashCode ^
        completedSurveys.hashCode ^
        requiredSurveys.hashCode ^
        reward.hashCode;
  }
}
