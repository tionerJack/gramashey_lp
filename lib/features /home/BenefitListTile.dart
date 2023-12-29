import 'dart:math';

import 'package:flutter/material.dart';

class BenefitListTile extends StatefulWidget {
  final bool leading;

  final String assetName;

  final double height;

  final String title;

  final double topMargin;

  const BenefitListTile(
      {super.key,
      this.leading = true,
      required this.assetName,
      this.title = "",
      this.height = 100,
      this.topMargin = 100});

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
      child: Image.asset(
        widget.assetName,
        fit: BoxFit.cover,
        height: widget.height,
        width: widget.height,
      ),
    );

    return ListTile(
      minLeadingWidth: widget.height,
      leading: widget.leading ? img : null,
      trailing: !widget.leading ? img : null,
      title: Text(widget.title, textScaleFactor: .9),
    );
  }
}
