import 'package:flutter/material.dart';

class Challenge {
  @protected
  String description;
  @protected
  String question;
  @protected
  String answer;
  @protected
  String skill;

  Challenge({
    required this.description,
    required this.question,
    required this.answer,
    required this.skill,
  });

  String get getdescription => description;
  String get getQuestion => question;
  String get getAnswer => answer;
  String get getSkill => skill;

  factory Challenge.fromJson(Map<String, dynamic> data) {
    return Challenge(
      description: data["description"],
      question: data["question"],
      answer: data["answer"],
      skill: data["skill"],
    );
  }
}
