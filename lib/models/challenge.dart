import 'package:flutter/material.dart';

class Challenge {
  @protected
  String title;
  @protected
  String question;
  @protected
  String answer;
  @protected
  String skill;

  Challenge({
    required this.title,
    required this.question,
    required this.answer,
    required this.skill,
  });

  factory Challenge.fromJson(Map<String, dynamic> data) {
    return Challenge(
      title: data["title"],
      question: data["question"],
      answer: data["answer"],
      skill: data["skill"]
    );
  }
}
