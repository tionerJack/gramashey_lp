import 'package:go_router/go_router.dart';

import '../../../../../features /benefits/temperature/index.dart';

final temperatureRouter = GoRoute(
  path: "temperature",
  builder: (context, state) => const TemperatureView(),
);
