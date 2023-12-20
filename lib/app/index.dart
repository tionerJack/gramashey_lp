import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gramashey_web/features%20/home/MyHomePage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme:
              ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 4, 24, 6))),
      home: const MyHomePage(),
    );
  }
}
