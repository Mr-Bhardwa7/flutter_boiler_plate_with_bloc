// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(const LightThemeState()) {
    on<ToggleThemeEvent>((event, emit) {
      if (state.isDarkMode) {
        emit(const LightThemeState());
      } else {
        emit(const DarkThemeState());
      }
    });
  }
}
