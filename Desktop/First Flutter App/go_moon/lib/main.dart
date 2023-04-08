import 'package:flutter/material.dart';
import 'package:go_moon/pages/home_page.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
// creating a constructor named arguments with a optional key
  const App({Key? key}) : super(key: key);

//below is an important override method  which shows how the app is run
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //theme: ThemeData(
      //   scaffoldBackgroundColor: const Color.fromARGB(255, 19, 18, 18)),
      home: HomePage(),
    );
  }
}
