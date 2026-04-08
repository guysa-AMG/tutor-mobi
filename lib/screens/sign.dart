import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:tutor/screens/wtcsignin.dart';

class SignInScreen extends StatefulWidget {
  @override
  State<SignInScreen> createState() => SignInScreenState();
}

class SignInScreenState extends State<SignInScreen> {
  ButtonStyle btnStyle = ButtonStyle(
    backgroundColor: WidgetStatePropertyAll(Colors.deepOrange),
    foregroundColor: WidgetStatePropertyAll(Colors.white),
    iconColor: WidgetStatePropertyAll(Colors.white),
    shape: WidgetStatePropertyAll(
      RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(5)),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Color(0xFF000000),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 50,
            children: [
              FlutterLogo(),
              Text(
                "Sign In To Continue",
                style: TextStyle(fontSize: 30, color: Colors.cyan),
              ),
              Text(
                "please sign in to continue",
                style: TextStyle(fontSize: 18, color: Color(0xFFFFDBCF)),
              ),

              Container(
                child: Column(
                  spacing: 10,
                  children: [
                    ElevatedButton.icon(
                      onPressed: null,
                      label: Text("sign in with google"),
                      icon: FaIcon(FontAwesomeIcons.google),
                      style: btnStyle,
                    ),
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
                        height: 24,
                        width: 24,
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
