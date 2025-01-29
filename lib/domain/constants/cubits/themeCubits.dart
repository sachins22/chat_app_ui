import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:messanger_app/domain/constants/cubits/themeState.dart';

class Themecubits extends Cubit<Themestate> {
  Themecubits() : super(LightThemeStates());

  void toggleTheme() {
    if (state is LightThemeStates) {
      emit(DarkThemeStates());
    } else {
      emit(LightThemeStates());
    }
  }
}
