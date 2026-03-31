import 'package:flutter/material.dart';

class Completion {
  @protected
  String id;
  @protected
  String object;
  @protected
  DateTime created;
  @protected
  String model;
  @protected
  LLMResponse choices;
  @protected
  Map<String, dynamic> usage;
  @protected
  Map<String, dynamic> stats;
  @protected
  String systemFingerprint;

  LLMResponse get response => choices;

  Completion({
    required this.id,
    required this.object,
    required this.created,
    required this.model,
    required this.choices,
    required this.usage,
    required this.stats,
    required this.systemFingerprint,
  });
}

class LLMResponse {
  int index;
  String messageRole;
  String messageContent;
  String messagingReasoningContent;
  String finished_reason;

  LLMResponse({
    required this.index,
    required this.messageRole,
    required this.messageContent,
    required this.messagingReasoningContent,
    required this.finished_reason,
  });
}
