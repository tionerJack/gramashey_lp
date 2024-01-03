import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:gramashey_web/features%20/home/BenefitsProvider.dart';

class ProtectedView extends ConsumerWidget {
  const ProtectedView({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final benefit = ref.watch(selectedBenefitProvider) ??
        ref.read(benefitsProvider.notifier).state.getById("protected");
    return Scaffold(
      body: Listener(
        onPointerMove: (details) {
          if (details.delta.dy > 10 && context.canPop()) {
            context.pop();
          }
        },
        child: ListView(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * .05,
            right: MediaQuery.of(context).size.width * .05,
          ),
          children: [
            const Text(
              'Barrera Impermeable',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Hero(
                tag: benefit.img,
                child: Image.asset(
                  benefit.img,
                  height: MediaQuery.of(context).size.height * .4,
                  fit: BoxFit.contain,
                )),
            const SizedBox(height: 10),
            const Text(
              'Blinda tu hogar con nuestro impermeabilizante acrílico: una barrera resistente y duradera contra la humedad y el agua. Su fórmula avanzada asegura una protección total y continua, evitando daños y filtraciones, garantizando un escudo que no se resquebraja ni se desprende. ¡Mantén tu casa segura y en perfecto estado',
              style: TextStyle(),
              textAlign: TextAlign.start,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .2,
            )
          ],
        ),
      ),
    );
  }
}
