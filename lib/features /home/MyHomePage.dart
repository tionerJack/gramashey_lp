import 'dart:js_interop';

import 'package:flutter/material.dart';

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
        "img": "protege.png",
        "title": "Crea una barrera que impide la entrada de agua y humedad."
      },
      {
        "img": "temperatura.png",
        "title": "Mantiene tu hogar fresco en verano y cálido en invierno."
      },
      {
        "img": "tiempo.png",
        "title": "Ofrece años de protección sin re-aplicaciones constantes."
      },
      {
        "img": "salud.png",
        "title": "Protege tu salud, previene el crecimiento de moho y hongos"
      },
      {
        "img": "facil.png",
        "title":
            "Fácil de aplicar, lo que significa que puedes hacerlo tú mismo."
      },
      {
        "img": "valor.png",
        "title": "Salvaguarda tu inversión y eleva el valor de mercado."
      }
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Center(
            child: Text(
          "Impermeabilizante Gramashey",
          textScaleFactor: .9,
        )),
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.height * .03),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * .03),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Image.asset(
                    "img15.png",
                    fit: BoxFit.cover,
                    height: MediaQuery.of(context).size.height * .55,
                  ),
                )
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .03),
            Text(
              'Beneficios',
              textAlign: TextAlign.left,
              style: Theme.of(context).textTheme.headlineMedium,
              textScaleFactor: .6,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .03),
            ...benefits
                .map((e) {
                  Image img = Image.asset(
                    e["img"]!,
                    fit: BoxFit.cover,
                    height: 100,
                  );

                  var i = benefits.indexOf(e);

                  return ListTile(
                    leading: i.isEven ? img : null,
                    trailing: i.isOdd ? img : null,
                    title: Text(e["title"]!),
                  );
                })
                .expand((element) => [element, Divider()])
                .toList(),
            SizedBox(height: MediaQuery.of(context).size.height * .03),
            Text(
              'Facil de aplicar ',
              textAlign: TextAlign.left,
              style: Theme.of(context).textTheme.headlineMedium,
              textScaleFactor: .6,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .03),
            Container(
              height: MediaQuery.of(context).size.height * .3,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                      height: MediaQuery.of(context).size.height * .3,
                      child: Placeholder()),
                  Container(
                      height: MediaQuery.of(context).size.height * .3,
                      child: Placeholder()),
                  Container(
                      height: MediaQuery.of(context).size.height * .3,
                      child: Placeholder()),
                  Container(
                      height: MediaQuery.of(context).size.height * .3,
                      child: Placeholder()),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .03),
            Text(
              'Testimonios ',
              textAlign: TextAlign.left,
              style: Theme.of(context).textTheme.headlineMedium,
              textScaleFactor: .6,
            ),
            Container(
              height: MediaQuery.of(context).size.height * .3,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                      height: MediaQuery.of(context).size.height * .3,
                      child: Placeholder()),
                  Container(
                      height: MediaQuery.of(context).size.height * .3,
                      child: Placeholder()),
                  Container(
                      height: MediaQuery.of(context).size.height * .3,
                      child: Placeholder()),
                  Container(
                      height: MediaQuery.of(context).size.height * .3,
                      child: Placeholder()),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .03),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.abc),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
