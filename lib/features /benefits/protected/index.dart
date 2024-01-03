import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gramashey_web/features%20/benefits/widgets/BenefitView.dart';

class ProtectedView extends StatelessWidget {
  const ProtectedView({super.key});

  @override
  Widget build(BuildContext context) {
    return const BenefitView(benefitId: "protected");
  }
}
