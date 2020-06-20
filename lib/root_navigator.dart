library root_navigator;

import 'package:flutter/material.dart';

class RootNavigator extends StatefulWidget {
  final Widget rootWidget;
  final String rootName;
  final Map<String, Object> rootNameArguments;
  final Map<String, Widget Function(BuildContext)> routes;

  const RootNavigator({
    Key key,
    @required this.routes,
    this.rootWidget,
    this.rootName,
    this.rootNameArguments,
  })  : assert(rootWidget != null || rootName != null),
        assert((rootNameArguments != null && rootWidget == null) ||
            rootNameArguments == null),
        super(key: key);

  @override
  _RootNavigatorState createState() => _RootNavigatorState();
}

class _RootNavigatorState extends State<RootNavigator> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (RouteSettings settings) {
        var passSettings;
        if (settings.name == Navigator.defaultRouteName &&
            widget.rootName != null &&
            widget.rootNameArguments != null) {
          passSettings = RouteSettings(
              name: settings.name, arguments: widget.rootNameArguments);
        } else {
          passSettings = settings;
        }
        return MaterialPageRoute(
          settings: passSettings,
          builder: (BuildContext context) {
            switch (settings.name) {
              case Navigator.defaultRouteName:
                if (widget.rootWidget != null) {
                  return widget.rootWidget;
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
