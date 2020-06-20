export './example_screen.dart';

import 'package:flutter/material.dart';

import 'example_screen.dart';

class Screens {
  static final Map<String, Widget Function(BuildContext)> routes = {
    'one': (context) => ExampleScreen(
          id: 1,
          args: ModalRoute.of(context).settings.arguments,
        ),
    'two': (context) => ExampleScreen(
          id: 2,
          args: ModalRoute.of(context).settings.arguments,
        ),
    'three': (context) => ExampleScreen(
          id: 3,
          args: ModalRoute.of(context).settings.arguments,
        ),
  };
}
