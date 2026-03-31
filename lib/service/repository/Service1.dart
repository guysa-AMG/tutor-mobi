import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:tutor/models/challenge.dart';

const String SERVER_URL = "http://20.20.20.48:8000";

class Service1 {
  Service1._();

  Future<Challenge> dailyChallenge() async {
    Response res = await Dio().get("$SERVER_URL/daily-challenge");
    print(res.data);
    return Challenge.fromJson(res.data);
  }

  @protected
  static final _instance = Service1._();

  static Service1 get getInstance => _instance;
}
