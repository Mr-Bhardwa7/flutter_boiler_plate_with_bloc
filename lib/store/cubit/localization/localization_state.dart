part of 'localization_cubit.dart';

@immutable
sealed class LocalizationState extends Equatable {
  final Locale locale;
  const LocalizationState(this.locale);

  @override
  List<Object?> get props => [locale];
}

final class LocalizationInitial extends LocalizationState {
  const LocalizationInitial() : super(const Locale('en'));
}

class LocalizationUpdated extends LocalizationState {
  const LocalizationUpdated(super.locale);
}
