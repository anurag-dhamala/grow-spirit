import "package:flutter/material.dart";
import "package:grow_spirit/routes.dart";

void main() {
  runApp(const App());
}

class App extends StatelessWidget {

  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: Routes.coll,
      initialRoute: Routes.homePage,
    );
  }

}