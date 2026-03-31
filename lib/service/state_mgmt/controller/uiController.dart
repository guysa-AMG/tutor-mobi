import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tutor/service/state_mgmt/state/uiThemeState.dart';

class Uicontroller extends Cubit<Uithemestate> {
  Uicontroller() : super(DarkThemeState());

  void toggle() {
    state is LightThemeState ? emit(DarkThemeState()) : emit(LightThemeState());
  }
}
