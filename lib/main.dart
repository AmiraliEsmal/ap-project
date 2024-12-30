import 'package:flutter/material.dart';
import 'package:proj/components/theme.dart';
import 'package:proj/route/names.dart';
import 'package:proj/route/routes.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Store',
      debugShowCheckedModeBanner: false,
      theme: lightTheme(),
      initialRoute: Screens.root,
      routes: routes,
      // home: MainScreen(),
    );
  }
}
