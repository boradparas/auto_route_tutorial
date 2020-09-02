import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({
    Key key,
    @required this.info,
    @required this.num,
  }) : super(key: key);

  final String info;
  final int num;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Second Screen"),
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Text("Info : $info"),
                Text("Num : $num"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
