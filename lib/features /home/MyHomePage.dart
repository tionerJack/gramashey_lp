import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gramashey_web/features%20/home/BenefitListTile.dart';
import 'package:url_launcher/url_launcher.dart';

import 'BenefitsProvider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.height * .02),
        child: Consumer(
            builder: (BuildContext context, WidgetRef ref, Widget? child) {
          final benefits = ref.watch(benefitsProvider);

          return Column(
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
                        benefit: e,
                        height: MediaQuery.of(context).size.height * .1,
                        leading: benefits.indexOf(e).isEven,
                        topMargin: MediaQuery.of(context).size.height,
                      ))
                  .expand((element) => [element, Divider()])
                  .toList(),
              SizedBox(height: MediaQuery.of(context).size.height * .15),
            ],
          );
        }),
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
      ),
    );
  }
}
