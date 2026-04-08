import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:tutor/models/challenge.dart';
import 'package:tutor/models/skill.dart';

const String SERVER_URL = "http://20.20.20.48:8000";

class Service1 {
  Service1._();

  Future<List<Skill>> getPaths() async {
    Response res = await Dio().get("$SERVER_URL/routes?limit=${20}");
    List<Skill> arrNodes = res.data
        .map<Skill>((dynamic data) => Skill.fromJson(data))
        .toList();
    return arrNodes;
  }

  Future<Challenge> dailyChallenge() async {
    Response res = await Dio().get("$SERVER_URL/daily-challenge");
    return Challenge.fromJson(res.data);
  }

  Future<void> moreInfo(String path) async {
   
    await Dio().get("${SERVER_URL + "/details" + path}");
  }

  @protected
  static final _instance = Service1._();
  static Service1 get getInstance => _instance;
}
