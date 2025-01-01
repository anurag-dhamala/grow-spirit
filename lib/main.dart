import "package:flutter/material.dart";
import "package:grow_spirit/provider/camera_provider.dart";
import "package:grow_spirit/provider/theme_provider.dart";
import "package:grow_spirit/routes.dart";
import "package:hive/hive.dart";
import 'package:path_provider/path_provider.dart';
import "package:provider/provider.dart";
import 'package:camera/camera.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final dir = await getApplicationDocumentsDirectory();
  Hive.init(dir.path);
  final cameras = await availableCameras();
  final firstCamera = cameras.first;
  runApp(MultiProvider(
    providers: [
      Provider<CameraProvider>(
        create: (_) => CameraProvider(firstCamera),
      ),
      ChangeNotifierProvider<ThemeProvider>(
        create: (_) => ThemeProvider(),
      ),
      // Add more providers here
    ],
    child: const App(),
  ));
}

class App extends StatelessWidget {
  const App({super.key});

  final bool isAlreadySet = true;

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: Routes.coll,
        theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            appBarTheme: const AppBarTheme(backgroundColor: Colors.white)),
        initialRoute: isAlreadySet ? Routes.homePage : Routes.preSetupPage,
      );
  }
}
