import 'package:auto_route/auto_route_annotations.dart';
import 'package:auto_router_tutorial/screens/first_screen.dart';
import 'package:auto_router_tutorial/screens/home_screen.dart';
import 'package:auto_router_tutorial/screens/second_screen.dart';

@AdaptiveAutoRouter(routes: <AutoRoute>[
  AutoRoute(page: HomeScreen, initial: true),
  AutoRoute(page: FirstScreen),
  AutoRoute(page: SecondScreen),
])
class $Router {}
