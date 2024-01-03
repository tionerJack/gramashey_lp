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
  final ScrollController _scrollController = ScrollController();
  bool isAtBottom = false;

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    super.dispose();
  }

  void _scrollListener() {
    if (_scrollController.offset >=
            _scrollController.position.maxScrollExtent &&
        !_scrollController.position.outOfRange) {
      setState(() {
        isAtBottom = true;
      });
    } else {
      setState(() {
        isAtBottom = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          controller: _scrollController,
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
                const Divider(),
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
        floatingActionButton: AnimatedSwitcher(
          duration: Duration(seconds: 5),
          switchInCurve: Curves.bounceInOut,
          child: isAtBottom
              ? FloatingActionButton.extended(
                  onPressed: _launchWhats,
                  label: const Text('Mas información'),
                  icon: const Icon(FontAwesomeIcons.whatsapp),
                  backgroundColor: Colors.green.shade800,
                )
              : FloatingActionButton(
                  onPressed: _launchWhats,
                  backgroundColor: Colors.green.shade800,
                  child: const Icon(FontAwesomeIcons.whatsapp),
                ),
        ));
  }

  void _launchWhats() async {
    const url = "https://wa.me/527291469030?text=Hola";
    await launchUrl(Uri.parse(url),
        mode: LaunchMode.externalNonBrowserApplication);
  }
}
