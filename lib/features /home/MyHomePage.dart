import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gramashey_web/features%20/home/BenefitListTile.dart';
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
                Hero(
                    tag: 'hero-tag-img15',
                    child: Image.asset(
                      "assets/img15.png",
                      fit: BoxFit.contain,
                      height: MediaQuery.of(context).size.height * .5,
                      width: MediaQuery.of(context).size.width * .85,
                    ))
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .03),
            Divider(),
            ...benefits
                .map((e) => BenefitListTile(
                      assetName: e["img"]!,
                      height: MediaQuery.of(context).size.height * .1,
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
