library root_navigator;

import 'package:flutter/material.dart';

class RootNavigator extends StatefulWidget {
  final Widget root;
  final String rootName;
  final Map<String, Widget Function(BuildContext)> routes;

  const RootNavigator(
      {Key key, this.root, this.rootName, @required this.routes})
      : assert(root != null || rootName != null),
        super(key: key);

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
              case Navigator.defaultRouteName:
                if (widget.root != null) {
                  return widget.root;
                } else {
                  return widget.routes[widget.rootName](context);
                }
                break;
              default:
                return widget.routes[settings.name](context);
            }
          },
        );
      },
    );
  }
}
