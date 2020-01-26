library root_navigator;

import 'package:flutter/material.dart';

class RootNavigator extends StatefulWidget {
  final Widget root;
  final Map<String, Widget Function(BuildContext)> routes;

  const RootNavigator({Key key, @required this.root, @required this.routes}) : super(key: key);

  @override
  _RootNavigatorState createState() => _RootNavigatorState();
}

class _RootNavigatorState extends State<RootNavigator> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) {
            switch (settings.name) {
              case '/':
                return widget.root;
              default:
                return widget.routes[settings.name](context);
            }
          },
        );
      },
    );
  }
}

