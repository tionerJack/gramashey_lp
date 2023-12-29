import 'dart:js_interop';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    const benefits = [
      {
        "img": "assets/protege.png",
        "title": "Crea una barrera que impide la entrada de agua y humedad."
      },
      {
        "img": "assets/temperatura.png",
        "title": "Mantiene tu hogar fresco en verano y cálido en invierno."
      },
      {
        "img": "assets/tiempo.png",
        "title": "Ofrece años de protección sin re-aplicaciones constantes."
      },
      {
        "img": "assets/salud.png",
        "title": "Protege tu salud, previene el crecimiento de moho y hongos"
      },
      {
        "img": "assets/facil.png",
        "title":
            "Fácil de aplicar, lo que significa que puedes hacerlo tú mismo."
      },
      {
        "img": "assets/valor.png",
        "title": "Salvaguarda tu inversión y eleva el valor de mercado."
      }
    ];

    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.height * .02),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * .03),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Image.asset(
                    "assets/img15.png",
                    fit: BoxFit.contain,
                    height: MediaQuery.of(context).size.height * .5,
                    width: MediaQuery.of(context).size.width * .85,
                  ),
                )
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .03),
            Divider(),
            ...benefits
                .map((e) => BenefitListTile(
                      assetName: e["img"]!,
                      height: 100,
                      leading: benefits.indexOf(e).isEven,
                      title: e["title"]!,
                      topMargin: MediaQuery.of(context).size.height,
                    ))
                .expand((element) => [element, Divider()])
                .toList(),
            SizedBox(height: MediaQuery.of(context).size.height * .15),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          String url = "https://wa.me/527291469030?text=Hola";
          await launchUrl(Uri.parse(url),
              mode: LaunchMode.externalNonBrowserApplication);
        },
        tooltip: 'Increment',
        backgroundColor: Colors.green.shade800,
        child: const Icon(
          FontAwesomeIcons.whatsapp,
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

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
    _topMargin =
        -widget.topMargin - widget.topMargin * Random.secure().nextDouble();
    super.initState();
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
      ),
    );

    return ListTile(
      minLeadingWidth: widget.height,
      leading: widget.leading ? img : null,
      trailing: !widget.leading ? img : null,
      title: Text(widget.title),
    );
  }
}
