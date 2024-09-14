part of 'theme_bloc.dart';

@immutable
sealed class ThemeState {
  final bool isDarkMode;
  const ThemeState(this.isDarkMode);

  List<Object?> get props => [isDarkMode];
}

class LightThemeState extends ThemeState {
  const LightThemeState() : super(false);
}

class DarkThemeState extends ThemeState {
  const DarkThemeState() : super(true);
}
