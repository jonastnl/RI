import 'package:flutter/material.dart';

import 'package:mynotes/screens/home.dart';

import 'package:mynotes/widget/appbar.dart';
import 'package:mynotes/widget/bottom_bar.dart';
import 'package:mynotes/widget/myContainer1.dart';

class Kontakt extends StatefulWidget {
  const Kontakt({super.key});

  @override
  State<Kontakt> createState() => _Kontakt();
}

class _Kontakt extends State<Kontakt> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    List<Widget> containersSmall = [
      SizedBox(
          height: screenSize.height * 0.4,
          width: screenSize.width,
          child: Image.asset(
            'assets/images/pexels-cátia-matos-1072179.jpg',
            fit: BoxFit.cover,
          )),
      MyContainer1(
          context: context,
          alignment: Alignment.topLeft,
          color: const Color.fromARGB(255, 53, 80, 112).withOpacity(1),
          text: 'Profil',
          text2:
              'Die RAYEN INTEC GmbH wurde im Jahr 1990 als Dienstleister für Entwicklung industrieller Anlagenautomatisierung gegründet. Die zu dieser Zeit beginnende Verschmelzung von Automatisierung und elektronischer Datenverarbeitung führte uns zu einem zukuftsorierentierten Jobs in den Geschäftbereichen von Automatisierung sowie IT-Hard- and Software. \n\nHeute verstehen wir uns als modernes, leistungsstarkes und innovatives Jobs für unseren Kunden. Gemeinsam optimieren wir Prozesse, erstellen Lösungen und integrieren diese in vorhandene IT-Systeme. Fortschritt und Innovation sind unser Antrieb!',
          nav1: navigateToUnternehmen,
          buttonText: 'mehr Erfahren...'),
    ];

    List<Widget> containersBig = [
      MyContainer1(
          context: context,
          alignment: Alignment.topLeft,
          color: const Color.fromARGB(255, 154, 3, 30).withOpacity(0.5),
          text: 'Kontakt',
          text2:
              'Sie erreichen und Montag bis Freitag zu unseren Bürozeiten von 08:00 Uhr bis 16:00 Uhr unter folgender Anschrift: \n\nRAYEN INTEC GmbH\nAM Hohen Ufer 4\nD-07318 Saalfeld\n\nTel.: +49 (3671) 5366-0\nFax: +49 (3671) 5366-50\n\neMail: info@rayen-intec.de',
          nav1: null,
          buttonText: 'mail schreiben ... link einfügen'),
      SizedBox(
          child: Image.asset(
        'assets/images/pexels-cátia-matos-1072179.jpg',
        fit: BoxFit.cover,
      )),
    ];

    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: PreferredSize(
          preferredSize: Size(screenSize.width, 1000),
          child: const MyAppBar(),
        ),
        body: CustomScrollView(slivers: <Widget>[
          SliverToBoxAdapter(
            //maintainBottomViewPadding: true,

            child: Column(children: <Widget>[
              SizedBox(
                  height: screenSize.height * 0.4,
                  width: screenSize.width,
                  child: Image.asset(
                    'assets/images/pexels-cátia-matos-1072179.jpg',
                    fit: BoxFit.cover,
                  )),
            ]),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2,
                mainAxisSpacing: 0.0,
                crossAxisSpacing: 0.0),
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return containersBig[index];
              },
              childCount: containersBig.length,
            ),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2,
                mainAxisSpacing: 0.0,
                crossAxisSpacing: 0.0),
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return containersSmall[index];
              },
              childCount: containersSmall.length,
            ),
          ),
          const SliverToBoxAdapter(
            child: BottomBar(),
          )
        ]));
  }
}
