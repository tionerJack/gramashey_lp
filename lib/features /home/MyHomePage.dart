import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
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
                    "imp15.png",
                    fit: BoxFit.cover,
                    height: MediaQuery.of(context).size.height * .55,
                  ),
                )
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .03),
            Text(
              'Protege tu hogar y el medio ambiente ',
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
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.abc),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
