

import 'package:flutter/material.dart';
import 'package:tutor/service/repository/Service1.dart';
import 'package:tutor/ui/cards/challenge.dart';

class DailyChallengeCard extends StatefulWidget{

  @override
  State<DailyChallengeCard> createState()=>DailyChallengeCardState();

}

class DailyChallengeCardState extends State<DailyChallengeCard>{
  @override
  Widget build(BuildContext context) {
    return  FutureBuilder(
      
      future: Service1.getInstance.dailyChallenge(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          print(snapshot.error);
        }
        if (snapshot.hasData) {
          return ChallengeCard(challenge: snapshot.data!);
        }
        return CircularProgressIndicator();
      },
    )

    ;
  }
  
}