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
                  color: Colors.deepPurple,
                  onPressed: _navigateToFirstScreen,
                  child: Text("First Screen"),
                ),
                FlatButton(
                  color: Colors.blueAccent,
                  onPressed: _navigateToSecondScreen,
                  child: Text("Second Screen"),
                ),
                FlatButton(
                  color: Colors.green,
                  onPressed: _navigateToThirdScreen,
                  child: Text("Third Screen"),
                ),
                FlatButton(
                  color: Colors.redAccent,
                  onPressed: _navigateToErrorScreen,
                  child: Text("Error Screen"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _navigateToFirstScreen() {
    ExtendedNavigator.root.push(
      Routes.firstScreen,
      arguments: FirstScreenArguments(
        info: "Hello",
      ),
    );
  }

  _navigateToSecondScreen() {
    ExtendedNavigator.root.push(
      Routes.secondScreen,
      arguments: SecondScreenArguments(
        info: "ABC",
        num: 111,
      ),
    );
  }

  _navigateToThirdScreen() {
    // Navigate without arguments
    ExtendedNavigator.root.push(
      Routes.thirdScreen,
    );
  }

  _navigateToErrorScreen() {
    ExtendedNavigator.root.push("pizza-on-pineapple");
  }
}
