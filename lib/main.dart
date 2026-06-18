import 'package:device_preview_plus/device_preview_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tutor/navbar.dart';
import 'package:tutor/screens/sign.dart';
import 'package:tutor/service/state_mgmt/controller/uiController.dart';
import 'package:tutor/service/state_mgmt/state/uiThemeState.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => MultiBlocProvider(
        providers: [BlocProvider(create: (context) => Uicontroller())],
        child: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Uicontroller,Uithemestate>(
      builder: (ctx, state) {
       return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: .fromSeed(
              dynamicSchemeVariant: DynamicSchemeVariant.content,
              seedColor: Colors.deepOrangeAccent,
            ),
            bottomNavigationBarTheme: BottomNavigationBarThemeData(
              backgroundColor: Color(0xffF1F1F1),
            
            ),
          ),
          darkTheme: ThemeData(
            textTheme: GoogleFonts.spaceGroteskTextTheme(),
            scaffoldBackgroundColor: const Color.fromARGB(248, 20, 20, 20),
            colorScheme: .fromSeed(
              brightness: Brightness.dark,
              dynamicSchemeVariant: DynamicSchemeVariant.content,
              seedColor:  Colors.deepOrangeAccent,
            ),
            bottomNavigationBarTheme: BottomNavigationBarThemeData(
              backgroundColor: Color(0xFF1B1B1B),
           
            ),
          ),
          themeMode:state.mode,
          home: NavBar(),
        );
      },
    );
  }
}
