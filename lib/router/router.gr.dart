// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../screens/first_screen.dart';
import '../screens/home_screen.dart';
import '../screens/second_screen.dart';
import '../screens/third_screen.dart';

class Routes {
  static const String homeScreen = '/';
  static const String firstScreen = '/first-screen';
  static const String secondScreen = '/second-screen';
  static const String thirdScreen = '/third-screen';
  static const all = <String>{
    homeScreen,
    firstScreen,
    secondScreen,
    thirdScreen,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.homeScreen, page: HomeScreen),
    RouteDef(Routes.firstScreen, page: FirstScreen),
    RouteDef(Routes.secondScreen, page: SecondScreen),
    RouteDef(Routes.thirdScreen, page: ThirdScreen),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    HomeScreen: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => const HomeScreen(),
        settings: data,
      );
    },
    FirstScreen: (data) {
      final args = data.getArgs<FirstScreenArguments>(nullOk: false);
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => FirstScreen(
          key: args.key,
          info: args.info,
        ),
        settings: data,
      );
    },
    SecondScreen: (data) {
      final args = data.getArgs<SecondScreenArguments>(nullOk: false);
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => SecondScreen(
          key: args.key,
          info: args.info,
          num: args.num,
        ),
        settings: data,
      );
    },
    ThirdScreen: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => ThirdScreen(),
        settings: data,
        fullscreenDialog: true,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// FirstScreen arguments holder class
class FirstScreenArguments {
  final Key key;
  final String info;
  FirstScreenArguments({this.key, @required this.info});
}

/// SecondScreen arguments holder class
class SecondScreenArguments {
  final Key key;
  final String info;
  final int num;
  SecondScreenArguments({this.key, @required this.info, @required this.num});
}
