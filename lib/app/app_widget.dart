import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:easy_dsa/l10n/l10n.dart';
import 'package:easy_dsa/routes.g.dart';
import 'package:easy_dsa/theme.dart';
import 'package:routefly/routefly.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:easy_dsa/store/bloc/theme/theme_bloc.dart';
import 'package:easy_dsa/store/cubit/localization/localization_cubit.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return BlocBuilder<LocalizationCubit, LocalizationState>(
          builder: (context, len) {
            return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              routerConfig: Routefly.routerConfig(
                routes: routes,
                middlewares: [_guardRoute],
                routeBuilder: (context, settings, child) {
                  return MaterialPageRoute(
                    settings: settings,
                    builder: (context) => child,
                  );
                },
              ),
              theme: state is LightThemeState ? lightTheme : darkTheme,
              supportedLocales: L10n.all,
              locale: len.locale,
              localizationsDelegates: const [
                AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
            );
          },
        );
      },
    );
  }
}

FutureOr<RouteInformation> _guardRoute(RouteInformation routeInformation) {
  if (['/guarded', '/guarded/report'].contains(routeInformation.uri.path)) {
    return routeInformation.redirect(Uri.parse('/'));
  }

  return routeInformation;
}
