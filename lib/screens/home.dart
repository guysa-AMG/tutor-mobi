import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:tutor/component/DailyChallengeCard.dart';
import 'package:tutor/component/ProgressCards.dart';
import 'package:tutor/component/resumeCard.dart';
import 'package:tutor/models/challenge.dart';
import 'package:tutor/service/repository/Service1.dart';
import 'package:tutor/ui/cards/challenge.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
      child:
       SingleChildScrollView(
        child:Column(
          spacing: 10,
      children: [

      ProgressCards("COURSES COMPLETED", "12", "this month", Text("+2",style: TextStyle(color: Colors.white60),) ,logo: Icon(LucideIcons.medal,size: 60),bg:  const Color.fromARGB(155, 25, 48, 68)),
      ProgressCards("CURRENT STREAK", "4 Days", "you on a roll", Icon(LucideIcons.flame) ,bg: const Color.fromARGB(255, 135, 97, 46),),
      ProgressCards("TOTAL EXPERIENCE", "42,850", "LVL 42",SizedBox(child: LinearProgressIndicator(borderRadius: BorderRadius.circular(5),value: 0.6,minHeight: 10,color: Colors.brown,backgroundColor: const Color.fromARGB(185, 38, 38, 38),),width: 220,) ),
       
        ResumeCard(),
        DailyChallengeCard()
       
       ])
   
   ) ))
    ;
   }
}
