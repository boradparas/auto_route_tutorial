import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({
    Key key,
    @required this.info,
  }) : super(key: key);

  final String info;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("First Screen"),
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Info : " + info),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
