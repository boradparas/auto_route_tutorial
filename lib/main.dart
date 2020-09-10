import 'package:auto_route/auto_route.dart';
import 'package:auto_router_tutorial/router/route_guard.dart';
import 'package:auto_router_tutorial/router/router.gr.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: ExtendedNavigator.builder(
        router: Router(),
        initialRoute: Routes.homeScreen,
        builder: (_, navigator) => Theme(
          data: ThemeData.dark(),
          child: navigator,
        ),
        guards: [AuthGuard()],
      ),
    );
  }
}
