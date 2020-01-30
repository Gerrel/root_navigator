import 'package:flutter/material.dart';

class PushScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          FlatButton(
            onPressed: () {
              Navigator.of(context).pushNamed('one');
            },
            child: Text(
              "Push Example screen 1",
            ),
          ),
          FlatButton(
            onPressed: () {
              Navigator.of(context).pushNamed('two');
            },
            child: Text(
              "Push Example screen 2",
            ),
          ),
          FlatButton(
            onPressed: () {
              Navigator.of(context).pushNamed('three');
            },
            child: Text(
              "Push Example screen 3",
            ),
          ),
        ],
      ),
    );
  }
}
