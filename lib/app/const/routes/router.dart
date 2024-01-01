import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../features /home/MyHomePage.dart';
import 'benefits/index.dart';

final mainRouter = GoRouter(routes: [
  GoRoute(path: "/", builder: (context, state) => MyHomePage(), routes: [
    benefitsRouter,
  ])
]);
