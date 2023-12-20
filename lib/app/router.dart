import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../features /home/MyHomePage.dart';

final GoRouter _router = GoRouter(routes: <RouteBase>[
  GoRoute(
    path: '/',
    builder: (BuildContext context, GoRouterState state) {
      return MyHomePage();
    },
    routes: <RouteBase>[
      GoRoute(
        path: 'details',
        builder: (BuildContext context, GoRouterState state) {
          return const Text("");
        },
      ),
    ],
  ),
]);
