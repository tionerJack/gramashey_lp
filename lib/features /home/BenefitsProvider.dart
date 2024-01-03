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
    "abstract": "Crea una barrera que impide la entrada de agua y humedad.",
    "path": "/benefits/protected",
    "title": "Barrera Impermeable",
    "description":
        "Blinda tu hogar con nuestro impermeabilizante acrílico: una barrera resistente y duradera contra la humedad y el agua. Su fórmula avanzada asegura una protección total y continua, evitando daños y filtraciones, garantizando un escudo que no se resquebraja ni se desprende. ¡Mantén tu casa segura y en perfecto estado!"
  },
  {
    "id": "temperature",
    "img": "assets/temperatura.png",
    "abstract": "Mantiene tu hogar fresco en verano y cálido en invierno.",
    "path": "/benefits/temperature",
    "title": "Confort Térmico Todo el Año",
    "description":
        "Nuestro impermeabilizante regula la temperatura interior, manteniendo tu hogar agradablemente fresco en verano y acogedoramente cálido en invierno, lo que se traduce en un ahorro significativo en climatización."
  },
  {
    "id": "durability",
    "img": "assets/tiempo.png",
    "abstract": "Ofrece años de protección sin re-aplicaciones constantes.",
    "path": "/benefits/durability",
    "title": "Durabilidad Prolongada",
    "description":
        "Experimenta la tranquilidad de una protección duradera. Nuestro producto ofrece años de defensa contra el clima sin la necesidad de re-aplicaciones frecuentes, asegurando la longevidad y el cuidado de tu hogar."
  },
  {
    "id": "health",
    "img": "assets/salud.png",
    "abstract": "Protege tu salud, previene el crecimiento de moho y hongos",
    "path": "/benefits/health",
    "title": "Saludable y Libre de Moho",
    "description":
        "Salvaguarda la salud de tu familia. Nuestro impermeabilizante evita la formación de moho y hongos, contribuyendo a un ambiente interior más sano y libre de alérgenos."
  },
  {
    "id": "ease",
    "img": "assets/facil.png",
    "abstract":
        "Fácil de aplicar, lo que significa que puedes hacerlo tú mismo.",
    "path": "/benefits/ease",
    "title": "Aplicación Sencilla y Rápida",
    "description":
        "Diseñado para una aplicación rápida y sin complicaciones. Con nuestro impermeabilizante, cualquiera puede proteger su hogar como un profesional, sin la necesidad de contratar mano de obra especializada."
  },
  {
    "id": "value",
    "img": "assets/valor.png",
    "abstract": "Salvaguarda tu inversión y eleva el valor de mercado.",
    "path": "/benefits/value",
    "title": "Aumenta el Valor de tu Hogar",
    "description":
        "Mejora la valoración de tu propiedad. Protege tu inversión con un impermeabilizante que no solo resguarda la estructura, sino que también aumenta el valor de mercado de tu hogar."
  }
]
    .map(
      (e) => Benefit.fromMap(e),
    )
    .toList();

extension BenefitExtension on List<Benefit> {
  Benefit getById(String id) {
    return firstWhere((element) => element.id == id);
  }
}
