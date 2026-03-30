import 'package:flutter/material.dart';
import 'package:tutor/service/repository/Service1.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Service1.getInstance.dailyChallenge(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          print(snapshot.error);
        }
        if (snapshot.hasData) {
          return Text(snapshot.data.toString());
        }
        return CircularProgressIndicator();
      },
    );
  }
}
