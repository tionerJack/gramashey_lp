import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'models/Benefit.dart';

final selectedBenefitProvider = StateProvider<Benefit?>((ref) => null);

final benefitsProvider = StateProvider(
  (ref) => benefits,
);

final benefits = [
  {
    "id": "protected",
    "img": "assets/protege.png",
    "title": "Crea una barrera que impide la entrada de agua y humedad.",
    "path": "/benefits/protected"
  },
  {
    "img": "assets/temperatura.png",
    "title": "Mantiene tu hogar fresco en verano y cálido en invierno.",
    "path": "/benefits/protected"
  },
  {
    "img": "assets/tiempo.png",
    "title": "Ofrece años de protección sin re-aplicaciones constantes.",
    "path": "/benefits/protected"
  },
  {
    "img": "assets/salud.png",
    "title": "Protege tu salud, previene el crecimiento de moho y hongos",
    "path": "/benefits/protected"
  },
  {
    "img": "assets/facil.png",
    "title": "Fácil de aplicar, lo que significa que puedes hacerlo tú mismo.",
    "path": "/benefits/protected"
  },
  {
    "img": "assets/valor.png",
    "title": "Salvaguarda tu inversión y eleva el valor de mercado.",
    "path": "/benefits/protected"
  }
]
    .map(
      (e) => Benefit.fromMap(e),
    )
    .toList();

extension BenefitExtension on List<Benefit> {
  getById(String id) {
    return firstWhere((element) => element.id == id);
  }
}
