import 'package:easy_dsa/app/components/route_widget.dart';
import 'package:easy_dsa/store/bloc/theme/theme_bloc.dart';
import 'package:easy_dsa/store/cubit/localization/localization_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            icon: const Icon(Icons.brightness_6),
            onPressed: () {
              context.read<ThemeBloc>().add(ToggleThemeEvent());
            },
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0, left: 8.0),
            child: IconButton(
              icon: const Icon(Icons.g_translate),
              onPressed: () {
                _showLanguageActionSheet(context);
              },
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: BlocBuilder<ThemeBloc, ThemeState>(
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child: Text(AppLocalizations.of(context)!.title),
                ),
                Center(
                  child: Text(AppLocalizations.of(context)!
                      .display(state is LightThemeState ? "Light" : "Dark")),
                ),
                const SizedBox(height: 60),
                const PageRouteWidget()
              ],
            );
          },
        ),
      ),
    );
  }

  void _changeAppLanguage(BuildContext context, String language) {
    if (language != 'cancel') {
      context.read<LocalizationCubit>().setLocale(Locale(language));
    }
    Navigator.pop(context, language);
  }

  void _showLanguageActionSheet(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) =>
          BlocBuilder<LocalizationCubit, LocalizationState>(
        builder: (context, state) {
          return CupertinoActionSheet(
            title: Text(AppLocalizations.of(context)!.selectLanguage),
            actions: <Widget>[
              CupertinoActionSheetAction(
                child: Text(AppLocalizations.of(context)!.english),
                onPressed: () {
                  _changeAppLanguage(context, 'en');
                },
              ),
              CupertinoActionSheetAction(
                child: Text(AppLocalizations.of(context)!.arabic),
                onPressed: () {
                  _changeAppLanguage(context, 'ar');
                },
              )
            ],
            cancelButton: CupertinoActionSheetAction(
              child: Text(AppLocalizations.of(context)!.cancel),
              onPressed: () {
                _changeAppLanguage(context, 'cancel');
              },
            ),
          );
        },
      ),
    );
  }
}
