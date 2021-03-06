import 'package:flutter/material.dart';
import 'package:root_navigator/root_navigator.dart';
import 'package:root_navigator_example/screens/screens.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AppState();
  }
}

class _AppState extends State<App> {
  int activeTab = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: Screens.routes,
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Flutter App'),
        ),
        resizeToAvoidBottomInset: true,
        body: IndexedStack(
          index: activeTab,
          children: [
            RootNavigator(
              rootWidget: ExampleScreen(id: 1),
              routes: Screens.routes,
            ),
            RootNavigator(
              rootName: 'two',
              rootNameArguments: {'from': 'main'},
              routes: Screens.routes,
            ),
            RootNavigator(
              rootWidget: ExampleScreen(id: 3),
              routes: Screens.routes,
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: activeTab,
          onTap: (index) => setState(() => activeTab = index),
          items: [
            BottomNavigationBarItem(
              icon: new Icon(Icons.home),
              title: new Text('Root one'),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.mail),
              title: new Text('Root two'),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), title: Text('Root three'))
          ],
        ),
      ),
    );
  }
}
