import 'package:go_router/go_router.dart';

import '../../../../../features /benefits/durability/index.dart';

final durabilityRouter = GoRoute(
  path: "durability",
  builder: (context, state) => const DurabilityView(),
);
