import 'package:device_preview_plus/device_preview_plus.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tutor/navbar.dart';
import 'package:tutor/screens/sign.dart';

void main() {
  runApp(DevicePreview(builder: (context) => MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(
          dynamicSchemeVariant: DynamicSchemeVariant.content,
          seedColor: const Color(0xFFAB3600),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Color(0xffF1F1F1),
          selectedItemColor: Color(0xFFAB3600),
          unselectedItemColor: Color(0xA1390C00),
        ),
      ),
      darkTheme: ThemeData(
   
        textTheme: GoogleFonts.spaceGroteskTextTheme(),
        scaffoldBackgroundColor: const Color.fromARGB(248, 20, 20, 20),
        colorScheme: .fromSeed(
          brightness: Brightness.dark,
          dynamicSchemeVariant: DynamicSchemeVariant.content,
          seedColor: const Color(0xFFFF5400),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Color(0xFF1B1B1B),
          selectedItemColor: Color(0xFFFFFFFF),
          unselectedItemColor: Color(0xF1FFB59C),
        ),
      ),
      themeMode: ThemeMode.dark,
      home: SignInScreen(),
    );
  }
}
