import 'package:auto_route/auto_route.dart';
import 'package:auto_router_tutorial/router/router.gr.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton(
                  color: Colors.redAccent,
                  onPressed: () => _navigateToFirstScreen(context),
                  child: Text("First Screen"),
                ),
                FlatButton(
                  color: Colors.blueAccent,
                  onPressed: () => _navigateToSecondScreen(context),
                  child: Text("Second Screen"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _navigateToFirstScreen(BuildContext context) {
    ExtendedNavigator.of(context).push(
      Routes.firstScreen,
      // Try route which does not exist and you will see error screen which auto_route package provides
      arguments: FirstScreenArguments(
        info: "Hello",
      ),
    );
  }

  _navigateToSecondScreen(BuildContext context) {
    ExtendedNavigator.of(context).push(
      Routes.secondScreen,
      arguments: SecondScreenArguments(info: "ABC", num: 111),
    );
  }
}
