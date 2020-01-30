import 'package:flutter/material.dart';
import 'package:root_navigator_example/widgets/push_screen.dart';

class ExampleScreen extends StatelessWidget {
  final int id;

  const ExampleScreen({Key key, @required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Example screen $id'),
        ),
        body: PushScreen());
  }
}
