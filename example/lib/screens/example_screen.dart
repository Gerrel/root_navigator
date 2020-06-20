import 'package:flutter/material.dart';
import 'package:root_navigator_example/widgets/push_screen.dart';

class ExampleScreen extends StatelessWidget {
  final int id;
  final Map<String, Object> args;
  const ExampleScreen({Key key, @required this.id, this.args})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example screen $id'),
      ),
      body: Column(children: [
        Text('$args'),
        PushScreen(),
      ]),
    );
  }
}
