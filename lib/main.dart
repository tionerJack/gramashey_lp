import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gramashey_web/app/const/routes/router.dart';
import 'package:gramashey_web/features%20/home/MyHomePage.dart';
import 'dart:html' as html;

import 'app/const/theme/index.dart';

Future<void> main() async {
  runApp(const MyApp());
  html.document.getElementById('centered')!.remove();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Gramashey Impermeabilizante',
      theme: theme,
      debugShowCheckedModeBanner: false,
      routerConfig: mainRouter,
    );
  }
}
