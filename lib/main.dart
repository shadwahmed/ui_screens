import 'package:flutter/material.dart';
import 'package:shadwahmed_exam/design%201/home_screen.dart';
import 'package:shadwahmed_exam/design%202/home_screen.dart';
import 'package:shadwahmed_exam/design%203/discover_screen.dart';
import 'package:shadwahmed_exam/design%203/home_screen.dart';

import 'design 3/bottom_try.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        HomeScreenDesign2.routeName :(context)=> HomeScreenDesign2(),
        HomeScreenD3.routeName :(context)=> HomeScreenD3(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
