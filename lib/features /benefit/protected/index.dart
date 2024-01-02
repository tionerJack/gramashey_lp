import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gramashey_web/features%20/home/BenefitsProvider.dart';

class ProtectedView extends ConsumerWidget {
  const ProtectedView({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final benefit = ref.watch(selectedBenefitProvider) ??
        ref.read(benefitsProvider.notifier).state.getById("protected");
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * .05),
        children: [
          const SizedBox(height: 10),
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
            'Crea una barrera invencible contra la humedad y el agua. Protege tu hogar y mantén un ambiente seco y saludable.',
            style: TextStyle(),
            textAlign: TextAlign.start,
          ),
        ],
      ),
    );
  }
}
