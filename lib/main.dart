import "package:flutter/material.dart";
import "package:grow_spirit/provider/theme_provider.dart";
import "package:grow_spirit/routes.dart";
import "package:hive/hive.dart";
import 'package:path_provider/path_provider.dart';
import "package:provider/provider.dart";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final dir = await getApplicationDocumentsDirectory();
  Hive.init(dir.path);
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  final bool isAlreadySet = false;

  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: Routes.coll,
        theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            appBarTheme: const AppBarTheme(
                backgroundColor: Colors.white
            )
        ),
        initialRoute: isAlreadySet ? Routes.homePage : Routes.preSetupPage,
      ),
    );
  }
}
