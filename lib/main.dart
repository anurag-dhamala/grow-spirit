import "package:flutter/material.dart";
import "package:grow_spirit/routes.dart";

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  final bool isAlreadySet = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: Routes.coll,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white
        )
      ),
      initialRoute: isAlreadySet ? Routes.homePage : Routes.preSetupPage,
    );
  }
}
