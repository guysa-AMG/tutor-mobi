

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tutor/ui/svgprovider.dart';

class ResumeCard extends StatefulWidget{

  @override
  State<ResumeCard> createState()=>ResumeCardState();

}

class ResumeCardState extends State<ResumeCard>{
  
  @override
  Widget build(BuildContext context) {
    return Card(
        
  
          child:
          Stack(
            children: [
              Opacity(opacity: 0.15,
              child: 
                SvgPicture.string(SVGProvider.jAVA.data ))
           ,
        Padding ( 
          padding: EdgeInsetsGeometry.symmetric(vertical: 40,horizontal: 20),
          child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 20,
            children:[
            
               Text("RESUME SESSION",style: TextStyle(color: Colors.deepOrangeAccent,fontSize: 12),),
                Text("Advance State Management in Java",style: TextStyle(height: 1,letterSpacing: -1,fontSize: 25,fontWeight:FontWeight.w500),),
                Text("mastering The State design pattern in Java is a behavioral software design pattern that "//
                "allows an object to alter its behavior when its internal state changes. It achieves this by encapsulating."),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("PROGRESS: 68%", style: TextStyle(),),
                    Text("12:40/18:00")
                  ],
                ),
                LinearProgressIndicator(
                  color: Colors.deepOrangeAccent,
                  borderRadius: BorderRadius.circular(5),
                  minHeight: 20,
                  backgroundColor: Colors.black12,
                  value: 0.7,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(5))),
                    foregroundColor:WidgetStatePropertyAll(Colors.black),
                    backgroundColor: WidgetStatePropertyAll(Colors.deepOrangeAccent)),
                  onPressed: ()=>{}, child: Text("CONTINUE CODING >"))

               
               ]))]),
        )

    ;
  }
  
}