import 'package:flutter/material.dart';
import 'package:tutor/models/skill.dart';
import 'package:tutor/service/repository/Service1.dart';

class LearnCard extends StatefulWidget {
  Skill skill;
  LearnCard({super.key, required this.skill});

  @override
  State<LearnCard> createState() => LearnCardState();
}

class LearnCardState extends State<LearnCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Service1.getInstance.moreInfo(this.widget.skill.url);
      },

      child: Container(
        alignment: Alignment.center,
        color: Colors.amberAccent,
        child: Text(this.widget.skill.title),
      ),
    );
  }
}
