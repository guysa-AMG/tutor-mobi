import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

import 'package:tutor/screens/wtcsignin.dart';

class SignInScreen extends StatefulWidget {
  @override
  State<SignInScreen> createState() => SignInScreenState();
}

class SignInScreenState extends State<SignInScreen> {
  ButtonStyle btnStyle = ButtonStyle(
    padding: WidgetStatePropertyAll(EdgeInsets.symmetric(vertical: 10)),
    fixedSize: WidgetStatePropertyAll(Size.fromWidth(280)),
    textStyle: WidgetStatePropertyAll(TextStyle(fontWeight: FontWeight.w700,fontSize: 20,color: const Color.fromARGB(217, 0, 0, 0),letterSpacing: -1)),
   backgroundColor: WidgetStatePropertyAll(Colors.deepOrangeAccent),
     foregroundColor: WidgetStatePropertyAll(const Color.fromARGB(216, 0, 0, 0)),
    iconColor: WidgetStatePropertyAll(Colors.black),
    iconSize: WidgetStatePropertyAll(30),
    shape: WidgetStatePropertyAll(
      RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(5)),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
      
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 50,
            children: [
              FlutterLogo(),
              Text(
                "Sign In To Continue",
                style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600),
              ),
              Text(
                "please sign in to continue",
                style: TextStyle(fontSize: 18, color: Color(0xFFFFDBCF)),
              ),

              Container(
                child: Column(
                  spacing: 20,
                  children: [
                   
                    ElevatedButton.icon(
                      onPressed: null,
                      label: Text("sign in with Github"),
                      icon: FaIcon(FontAwesomeIcons.github),
                      style: btnStyle,
                    ),
                    ElevatedButton.icon(
                      onPressed: null,
                      label: Text("sign in with Gitlab"),
                      icon: FaIcon(FontAwesomeIcons.gitlab),
                      style: btnStyle,
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (builder)=>WtcPopupScreen()));
                      },
                      label: Text("sign in with Wethinkcode_"),
                      icon: Image.asset(
                        "assets/img/wtc.png",
                        height: 30,
                        width: 30,
                      ),
                      style: btnStyle,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: null,
                    child: Text(
                      "Privacy Policy",
                      style: TextStyle(color: Color(0xFFFFDBCF)),
                    ),
                  ),
                  TextButton(
                    onPressed: null,
                    child: Text(
                      "Terms of Use",
                      style: TextStyle(color: Color(0xFFFFDBCF)),
                    ),
                  ),
                  TextButton(
                    onPressed: null,
                    child: Text(
                      "Data Policy",
                      style: TextStyle(color: Color(0xFFFFDBCF)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
