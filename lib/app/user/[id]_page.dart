import 'package:flutter/material.dart';

import '../components/route_widget.dart';

class UserDetailPage extends StatelessWidget {
  const UserDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Center(
          child: Text("USER DETAIL PAGE"),
        ),
        PageRouteWidget()
      ],
    );
  }
}
