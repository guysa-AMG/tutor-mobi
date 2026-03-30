import 'package:device_preview_plus/device_preview_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tutor/navbar.dart';
import 'package:tutor/screens/chat.dart';
import 'package:tutor/service/repository/Service1.dart';

void main() {
  runApp(DevicePreview(builder: (context) =>

   MyApp()
   ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: 'Flutter Demo',
      theme: ThemeData(
 
        colorScheme: .fromSeed(seedColor:const Color(0xFFFF5400)),
        
      ),
       darkTheme: ThemeData(
     
        scaffoldBackgroundColor: const Color.fromARGB(248, 20, 20, 20),
        navigationBarTheme: NavigationBarThemeData(backgroundColor:const Color.fromARGB(248, 20, 20, 20)),
  colorScheme: .fromSeed(brightness: Brightness.dark,dynamicSchemeVariant: DynamicSchemeVariant.content,seedColor: const Color(0xFFFF5400)),
        
      ),
      themeMode: ThemeMode.dark,
      home:NavBar(),
    );
  }
}

