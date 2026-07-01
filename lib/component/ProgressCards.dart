

import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class ProgressCards extends StatefulWidget{
  String title;
  String value;
  String desc;
  Widget stat;
  Widget? logo;
  Color? bg;
  ProgressCards(this.title,this.value,this.desc,this.stat,{super.key,this.logo=null,this.bg=const Color.fromARGB(134, 0, 0, 0)});


  @override 
  State<ProgressCards> createState()=> ProgressCardsState();
}
class ProgressCardsState extends State<ProgressCards>{
  @override 
  Widget build(BuildContext context){
    return 
     Stack (
        alignment: AlignmentDirectional.topEnd,
        children:[
       
         SizedBox (
          width: double.maxFinite,
            child:
            
            Card(
              color: super.widget.bg,
          child:
          Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 20,vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 5,
            children: [
              Text(super.widget.title,style: TextStyle(color: const Color.fromARGB(255, 215, 156, 134),fontSize: 16,letterSpacing: 1.5),),
              Text(super.widget.value,style: TextStyle(color:Colors.white,fontSize: 40,fontWeight: FontWeight.w800),),
              
            Row(
              spacing: 10,
              children: [
                super.widget.stat,
                  Opacity(opacity: 0.6,child :Text(super.widget.desc,style: TextStyle(color: Colors.white),))
              ],
            )
           
            ],
          )),
        )), Positioned(top:50,right: 50,child: Opacity(opacity: 0.4,child:super.widget.logo ))
        
        ])
;
  }
}