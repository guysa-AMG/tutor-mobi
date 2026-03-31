import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lucide_icons/lucide_icons.dart';

class SignInScreen extends StatefulWidget {
  @override
  State<SignInScreen> createState() => SignInScreenState();
}

class SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Text("Sign In To Continue")
            ,
            Text("please sign in to continue"),

            Container(
              child: Column(
                children: [
                  ElevatedButton.icon(onPressed: null, label: Text("sign in with google"),icon: FaIcon(FontAwesomeIcons.google),)
                ],
              ),
            )
              ],
        ),
      ),
    );
  }
}
