import 'package:go_router/go_router.dart';
import '../../../../../features /benefits/value/index.dart';

final valueRouter = GoRoute(
  path: "value",
  builder: (context, state) => const ValueView(),
);
