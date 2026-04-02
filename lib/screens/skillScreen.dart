import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:tutor/service/repository/Service1.dart';
import 'package:tutor/ui/cards/learnCard.dart';

class SkillScreen extends StatefulWidget {
  @override
  State<SkillScreen> createState() => SkillScreenState();
}

class SkillScreenState extends State<SkillScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(120),
       child:Container(
     
        child: SearchBar(
        hintText: "Search Skill",
       ))),
      body: FutureBuilder(
        future: Service1.getInstance.getPaths(),
        builder: (ctx, snapshot) {
          if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          }
          if (snapshot.hasData) {
            return GridView(
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 30),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 40,
                crossAxisSpacing: 10,
                crossAxisCount: 4,
              ),
              children: snapshot.data!
                  .map((skill) => LearnCard(skill: skill))
                  .toList(),
            );
          }
          return CircularProgressIndicator();
        },
      ),
    );
  }
}
