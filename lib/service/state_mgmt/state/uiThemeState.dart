import 'package:flutter/material.dart';

abstract class Uithemestate {
 abstract ThemeMode mode;
}

class DarkThemeState extends Uithemestate {

   ThemeMode mode = ThemeMode.dark;
}

class LightThemeState extends Uithemestate {
 
  ThemeMode mode = ThemeMode.light;
}
