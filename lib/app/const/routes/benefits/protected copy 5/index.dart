import 'package:go_router/go_router.dart';

import '../../../../../features /benefits/protected/index.dart';

final protectedRouter = GoRoute(
  path: "protected",
  builder: (context, state) => const ProtectedView(),
);
