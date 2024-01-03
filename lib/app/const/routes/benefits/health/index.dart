import 'package:go_router/go_router.dart';
import '../../../../../features /benefits/health/index.dart';

final healthRouter = GoRoute(
  path: "health",
  builder: (context, state) => const HealthView(),
);
