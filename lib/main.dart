import 'package:flutter/material.dart';
import 'package:github_rest/view/home.dart';
import 'package:github_rest/model/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: true,
          // primaryColor: Colors.green
          // colorScheme: ColorScheme.fromSwatch().copyWith(
          //   primary: Colors.purple,
          //   // secondary: Colors.pink,
          // )
      ),
      themeMode: ThemeMode.system,
      home: const Home(),
      routes: routingMap,
    );
  }
}