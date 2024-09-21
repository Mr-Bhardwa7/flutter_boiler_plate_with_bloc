import 'package:easy_dsa/routes.g.dart';
import 'package:flutter/material.dart';
import 'package:routefly/routefly.dart';

class PageRouteWidget extends StatelessWidget {
  const PageRouteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        TextButton(
          style: const ButtonStyle(
            foregroundColor: WidgetStatePropertyAll(Colors.blue),
          ),
          onPressed: () => Routefly.navigate(routePaths.path),
          child: const Text("Home page (/)"),
        ),
        TextButton(
          style: const ButtonStyle(
            foregroundColor: WidgetStatePropertyAll(Colors.blue),
          ),
          onPressed: () => Routefly.navigate('/user/1'),
          child: const Text("User page (/user/1)"),
        ),
        TextButton(
          style: const ButtonStyle(
            foregroundColor: WidgetStatePropertyAll(Colors.red),
          ),
          onPressed: () => Routefly.navigate(routePaths.guarded.report),
          child: const Text("Authented Route"),
        )
      ],
    );
  }
}
