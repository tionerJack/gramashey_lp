import 'package:go_router/go_router.dart';
import 'package:gramashey_web/app/const/routes/benefits/protected/index.dart';
import 'package:gramashey_web/features%20/home/MyHomePage.dart';

final benefitsRouter = GoRoute(
    builder: (context, state) => MyHomePage(),
    path: "benefits",
    routes: [protectedRouter]);
