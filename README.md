# root_navigator

A flutter package that creates a sub-navigator with routes

[![MIT License][license-badge]][LICENSE]
[![Watch on GitHub][github-watch-badge]][github-watch]
[![Star on GitHub][github-star-badge]][github-star]

## Getting Started

So you want for example a bottom bar with independent navigator view stack.

```dart
import 'package:root_navigator/root_navigator.dart';

return MaterialApp(
        theme: config.forceDarkMode ? JTheme.darkTheme : JTheme.lightTheme,
        darkTheme: config.forceLightMode ? JTheme.lightTheme : JTheme.darkTheme,
        localizationsDelegates: [
          // ... app-specific localization delegate[s] here
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          Localizable.delegate,
        ],
        supportedLocales: Localizable.supportedLocales,
        routes: Screens.routes,
        home: Scaffold(
                  resizeToAvoidBottomPadding: true,
                  body: IndexedStack(
                    index: activeTab,
                    children: [
                        RootNavigator(root: MyPageWidget1(), routes: Screens.routes),
                        RootNavigator(root: MyPageWidget2(), routes: Screens.routes),
                        RootNavigator(root: MyPageWidget3(), routes: Screens.routes),
                    ],
                  ),
                  bottomNavigationBar: TabSelector(
                    activeTab: activeTab,
                    onTabSelected: (tab) =>
                        _changeToTab(tab),
                  ),
));
```
## License

This project is licensed under the MIT License - see the 
[license] file for details.

[license]: https://github.com/Gerrel/root_navigator/blob/master/LICENSE.md
[github-watch-badge]: https://img.shields.io/github/watchers/Gerrel/root_navigator.svg?style=social
[github-watch]: https://github.com/Gerrel/root_navigator/watchers
[github-star-badge]: https://img.shields.io/github/stars/Gerrel/root_navigator.svg?style=social
[github-star]: https://github.com/Gerrel/root_navigator/stargazers
[releases]: https://github.com/Gerrel/root_navigator/releases