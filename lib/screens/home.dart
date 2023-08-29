import 'package:flutter/material.dart';
import 'package:mynotes/screens/agb.dart';

import 'package:mynotes/screens/automatisierung.dart';
import 'package:mynotes/screens/datenschutz.dart';
import 'package:mynotes/screens/hardware.dart';
import 'package:mynotes/screens/impressum.dart';
import 'package:mynotes/screens/jobs.dart';
import 'package:mynotes/screens/jobs_seperate.dart';
import 'package:mynotes/screens/kontakt.dart';
import 'package:mynotes/screens/unternehmen.dart';
import 'package:mynotes/widget/appbar.dart';
import 'package:mynotes/widget/bottom_bar.dart';

//container
import 'package:mynotes/widget/myContainer1.dart';
import 'package:mynotes/widget/myContainer2.dart';
import 'package:mynotes/widget/myContainer3.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
  String textMessage = "";
  final myController = TextEditingController();
  //Home({super.key});
  int i = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> containersBig = [
      MyContainer1(
          context: context,
          alignment: Alignment.topLeft,
          color: const Color.fromARGB(255, 154, 3, 30).withOpacity(0.8),
          text: 'Automatisierung',
          text2:
              'Wir sind seit vielen Jahren mit viel Engagement und höchster Zuverlässigkeit in der Automatisierungsbranche zu Hause. Hier sind wir jeden Tag gefordert, passgenaue und individuelle Lösungen für die verschiedensten Anforderungen zu entwickeln und vor Ort umzusetzen. Mit über 20 Jahren Erfahrung in verschiedenen Industriezweigen besitzen wir viel Erfahrung und Ausdauer, mit unseren Kunden Projekte zu entwicklen und umzusetzen. \n\n Wir liefern Lösungen aus einer Hand. Von der  Aufnahme, Lösung, Elektroprojektierung, Schaltschrankbau, SPS-Programmierung, Visualisierung bis hin zum Leitsystem, SCADA oder ERP-Systemen.',
          nav1: navigateToAutomatisierung,
          buttonText: 'mehr Erfahren...'),
      MyContainer1(
          context: context,
          alignment: Alignment.topLeft,
          color: const Color.fromARGB(255, 53, 80, 112).withOpacity(1),
          text: 'IT-Systemhaus',
          text2:
              'Wir verstehen uns als professionelles Systemhaus und Dienstleistungspartner rund um die IT-Technik für kleine und mittelständische Unternehmen mit Erfahrungen aus über 20 Jahren. Wir leisten kompletten IT-Service für EDV-Hard- & Software, Internet-Services und Software-Entwicklung. \n\n Unser Service- und Betreuungsangebot umfasst die gesamte Planung und Umsetzung, sowie die Betreuung Ihrer IT-Landschaft. Sei es als Komplettpaket oder auch als Spezialist für bestimmte Themen in Ihrem Unternehmen. Egal ob Einzel- oder Gesamtlösung, bei uns bekommen Sie alles aus einer Hand. Für uns steht der persönliche Kontakt im Vordergrund – direkte Ansprechpartner für Ihre IT-Aufgaben sind für uns die Voraussetzung für eine vertrauensvolle Zusammenarbeit.',
          nav1: navigateToHardware,
          buttonText: 'mehr Erfahren...'),
    ];

    List<Widget> containersMid = [
      MyContainer2(
        context: context,
        alignment: Alignment.topLeft,
        color: const Color.fromARGB(255, 154, 3, 30).withOpacity(0.5),
        text: 'Stellenangebote Automatisierung',
        text2: const [
          'Automatisierungstechniker (m/w)',
          '',
          'Elektroprojektant (m/w)',
          ''
        ],
        nav1: navigateToJob1,
        nav2: navigateToJob3,
      ),
      MyContainer2(
        context: context,
        alignment: Alignment.topLeft,
        color: const Color.fromARGB(255, 53, 80, 112).withOpacity(0.5),
        text: 'Stellenangebote EDV-Technik',
        text2: const [
          'Netzwerkadministrator Windows (m/w)',
          '',
          'Software-Entwickler ',
          'Kenntnisse: C# & MS-SQL-Server'
        ],
        nav1: navigateToJob4,
        nav2: navigateToJob2,
      ),
    ];

    List<Widget> containersSmall = [
      MyContainer3(
          context: context,
          alignment: Alignment.topRight,
          color: const Color.fromARGB(255, 204, 55, 40).withOpacity(0.3),
          text: 'Kontakt',
          text2: 'RAYEN INTEC GmbH\nAM Hohen Ufer 4\nD-07318 Saalfeld',
          text3:
              'Tel.: +49 (3671) 5366-0\nFax: +49 (3671) 5366-50\n\neMail: info@rayen-intec.de',
          nav1: null),
      MyContainer1(
          context: context,
          alignment: Alignment.topLeft,
          color: const Color.fromARGB(255, 204, 55, 40).withOpacity(0.3),
          text: 'Fernwartung',
          text2:
              'Unseren Kunden können wir auch über das Internet direkt am eigenen Windows-Computer helfen. Dazu loggen wir uns über eine Fernwartungssoftware auf Ihrem Bildschirm ein.',
          nav1: null,
          buttonText: 'mehr Erfahren...'),
    ];

    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      extendBodyBehindAppBar: true,

      //Startseite
      //backgroundColor: const Color.fromARGB(127, 43, 43, 45),
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 1000),
        child: const MyAppBar(),
      ),
      body: Stack(children: [
        CustomScrollView(slivers: <Widget>[
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
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0),
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return containersBig[index];
              },
              childCount: containersBig.length,
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 10),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2.5,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0),
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Container(
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: containersMid[index]);
              },
              childCount: containersMid.length,
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 10),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2.5,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0),
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Container(
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: containersSmall[index]);
              },
              childCount: containersSmall.length,
            ),
          ),
          const SliverToBoxAdapter(child: BottomBar()),
          /* Expanded(
                    child: GridView.builder(
      
                        /*crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  padding: const EdgeInsets.all(20),
                  shrinkWrap: true,
                  children: <Widget>[*/
                        gridDelegate:
                            SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio:
                              1.7, // Adjust the aspect ratio here
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                        ),
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return containers[index];
                        })),*/
        ]),
      ]),
    );
  }
}

void navigateToHome(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Home()),
  );
}

void navigateToAutomatisierung(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Automatisierung()),
  );
}

void navigateToHardware(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Hardware()),
  );
}

void navigateToUnternehmen(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Unternehmen()),
  );
}

void navigateToJobs(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Jobs()),
  );
}

void navigateToKontakt(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Kontakt()),
  );
}

void navigateToJob1(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(
        builder: (context) =>
            JobsSeperate(title1: jobTitle[0], text1: jobText[0])),
  );
}

void navigateToJob2(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(
        builder: (context) =>
            JobsSeperate(title1: jobTitle[1], text1: jobText[1])),
  );
}

void navigateToJob3(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(
        builder: (context) =>
            JobsSeperate(title1: jobTitle[2], text1: jobText[2])),
  );
}

void navigateToJob4(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(
        builder: (context) =>
            JobsSeperate(title1: jobTitle[3], text1: jobText[3])),
  );
}

void navigateToImpressum(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Impressum()),
  );
}

void navigateToDatenschutz(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Datenschutz()),
  );
}

void navigateToAgb(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Agb()),
  );
}
