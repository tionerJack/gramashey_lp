import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:gramashey_web/features%20/home/models/Benefit.dart';
import 'package:gramashey_web/features%20/home/BenefitsProvider.dart';

class BenefitListTile extends StatefulWidget {
  final bool leading;

  final double height;

  final double topMargin;

  final Benefit benefit;

  const BenefitListTile({
    super.key,
    this.leading = true,
    required this.benefit,
    this.height = 100,
    this.topMargin = 100,
  });

  @override
  State<BenefitListTile> createState() => _BenefitListTileState();
}

class _BenefitListTileState extends State<BenefitListTile> {
  double _topMargin = -100;
  @override
  void initState() {
    super.initState();
    _topMargin =
        -widget.topMargin - widget.topMargin * Random.secure().nextDouble();
    _startFallingAnimation();
  }

  void _startFallingAnimation() {
    Future.delayed(const Duration(microseconds: 1), () {
      setState(() {
        _topMargin = 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget img = AnimatedContainer(
      curve: Curves.bounceOut,
      transform: Transform.translate(offset: Offset(0, _topMargin)).transform,
      duration: const Duration(seconds: 3),
      child: Hero(
        tag: widget.benefit.img,
        child: Image.asset(
          widget.benefit.img,
          fit: BoxFit.cover,
          height: widget.height,
          width: widget.height,
        ),
      ),
    );

    return Consumer(
      builder: (context, ref, child) {
        return ListTile(
          minLeadingWidth: widget.height,
          leading: widget.leading ? img : null,
          trailing: !widget.leading ? img : null,
          title: Text(widget.benefit.abstract, textScaleFactor: .9),
          onTap: () {
            ref.read(selectedBenefitProvider.notifier).state = widget.benefit;

            context.push(widget.benefit.path);
          },
        );
      },
    );
  }
}
