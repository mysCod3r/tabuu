import 'package:flutter/material.dart';
import 'package:tabuu/screens/home_screen.dart';
import 'package:flutter/services.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [SystemUiOverlay.bottom]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tabuu',
      theme:  ThemeData(
          textTheme: Theme.of(context).textTheme.apply(
            fontFamily: 'Lemonada',
            bodyColor: Colors.white,
            displayColor: Colors.white,
          )),
      home: const HomeScreen(),
    );
  }
}