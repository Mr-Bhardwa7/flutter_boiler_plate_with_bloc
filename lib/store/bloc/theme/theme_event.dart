part of 'theme_bloc.dart';

@immutable
sealed class ThemeEvent {
  List<Object?> get props => [];
}

class ToggleThemeEvent extends ThemeEvent {}
