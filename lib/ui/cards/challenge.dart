import 'package:flutter/material.dart';
import 'package:flutter_code_editor/flutter_code_editor.dart';
import 'package:tutor/models/challenge.dart';
import 'package:highlight/languages/python.dart';
import 'package:flutter_highlight/themes/darcula.dart';

class ChallengeCard extends StatefulWidget {
  @protected
  Challenge challenge;
  ChallengeCard({super.key, required this.challenge});

  @override
  State createState() => ChallengeCardState();
}

class ChallengeCardState extends State<ChallengeCard> {
  late CodeController codeController;

  @override
  void initState() {
    // TODO: implement initState
    codeController = CodeController(
      text: this.widget.challenge.getQuestion,
      language: python,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Card(
      elevation: 0,
      color: Color(0xff001F25),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(0), bottomLeft: Radius.circular(0))),
      child:Container(
  
     decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      border: BoxBorder.fromLTRB(left: BorderSide(color: Color(0xFF24BBD4), width: 5))
     ),
      padding: EdgeInsetsGeometry.symmetric(vertical: 40, horizontal: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
        
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Daily challenge",
              style: TextStyle(fontSize: 24, color: Color(0xFF24BBD4), fontWeight: FontWeight.bold),
            ),
            Text(this.widget.challenge.getdescription, style: TextStyle(fontSize: 16, color: Color(0xAAFFFFFF)),),
            CodeTheme(
              data: CodeThemeData(styles: darculaTheme),
              child: CodeField(controller: codeController), 
           ),
           TextButton(onPressed: null, child: Text("Submit >", style: TextStyle(color: Color(0xFF24BBD4)),))
          ],

        ),
     
    ));
  }
}
