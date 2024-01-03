import 'package:go_router/go_router.dart';

import '../../../../../features /benefits/ease/index.dart';

final easeRouter = GoRoute(
  path: "ease",
  builder: (context, state) => const EaseView(),
);
