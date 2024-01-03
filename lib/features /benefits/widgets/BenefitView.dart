import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:gramashey_web/features%20/home/BenefitsProvider.dart';

class BenefitView extends ConsumerWidget {
  final String benefitId;

  const BenefitView({
    super.key,
    required this.benefitId,
  });

  @override
  Widget build(BuildContext context, ref) {
    final benefit = ref.watch(selectedBenefitProvider) ??
        ref.read(benefitsProvider.notifier).state.getById(benefitId);
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
            Text(
              benefit.title,
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
            Text(
              benefit.description,
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
