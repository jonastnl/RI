import 'package:flutter/material.dart';
import 'package:mynotes/screens/hardware.dart';

import 'package:mynotes/screens/home.dart';
import 'package:mynotes/screens/jobs.dart';
import 'package:mynotes/screens/kontakt.dart';
import 'package:mynotes/screens/unternehmen.dart';
import 'package:mynotes/widget/bottom_bar.dart';

class Automatisierung extends StatefulWidget {
  const Automatisierung({super.key});

  @override
  State<Automatisierung> createState() => _Automatisierung();
}

class _Automatisierung extends State<Automatisierung> {
  final List _isHovering = [false, false, false, false, false, false];
  Widget myInkWell(String text, nav, int ind) {
    return InkWell(
      onHover: (value) {
        setState(() {
          _isHovering[ind] = value;
        });
      },
      onTap: () {
        nav(context);
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            text,
            style: TextStyle(
              color: _isHovering[ind] ? Colors.blue.shade200 : Colors.white,
            ),
          ),
          const SizedBox(height: 5),
          // For showing an underline on hover
          Visibility(
            maintainAnimation: true,
            maintainState: true,
            maintainSize: true,
            visible: _isHovering[ind],
            child: Container(
              height: 2,
              width: 20,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }

  Widget myAppBar(context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[
            const Color.fromARGB(255, 204, 55, 40).withOpacity(1),
            const Color.fromARGB(255, 204, 55, 40).withOpacity(0.0),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                navigateToHome(context);
              },
              child: const Text('RAYEN INTEC',
                  style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  myInkWell('Automatisierung', navigateToAutomatisierung, 0),
                  SizedBox(width: screenSize.width / 20),
                  myInkWell('Hard- und Software', navigateToHardware, 1),
                  SizedBox(width: screenSize.width / 20),
                  myInkWell('Unternehmen', navigateToUnternehmen, 2),
                  SizedBox(width: screenSize.width / 20),
                  myInkWell('Jobs', navigateToJobs, 3),
                  SizedBox(width: screenSize.width / 20),
                  myInkWell('Kontakt', navigateToKontakt, 4),
                  //SizedBox(width: screenSize.width / 20),
                ],
              ),
            ),
            SizedBox(
              width: screenSize.width / 50,
            ),
            InkWell(
              onTap: () {},
              child: const Text(
                'Impressum',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> containersBig = [
    const TextContainer(titleInd: 0, textInd: 0),
    const TextContainer(titleInd: 1, textInd: 1),
    const TextContainer(titleInd: 2, textInd: 2),
    const TextContainer(titleInd: 3, textInd: 3),
    const TextContainer(titleInd: 4, textInd: 4),
    const TextContainer(titleInd: 5, textInd: 5),
    const TextContainer(titleInd: 6, textInd: 6),
    const TextContainer(titleInd: 7, textInd: 7),
    const TextContainer(titleInd: 8, textInd: 8),
  ];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 1000),
        child: myAppBar(context),
      ),
      body: Stack(children: [
        /*Drawer(
            child: ListView(children: <Widget>[
          ListTile(
              title: const Text("Leistungen"),
              onTap: () {
                setState(() {
                  TextContainer;
                });
              }),
          ListTile(
              title: const Text("E-Projektierung"),
              onTap: () {
                setState(() {
                  TextContainer;
                });
              }),
          ListTile(
              title: const Text("SPS/Steuerung"),
              onTap: () {
                setState(() {
                  TextContainer;
                });
              }),
          ListTile(
              title: const Text("Visualisierung"),
              onTap: () {
                setState(() {
                  TextContainer;
                });
              }),
          ListTile(
              title: const Text("Betriebsdatenerfassung"),
              onTap: () {
                setState(() {
                  TextContainer;
                });
              }),
          ListTile(
              title: const Text("Prozessleitsysteme"),
              onTap: () {
                setState(() {
                  TextContainer;
                });
              }),
          ListTile(
              title: const Text("Referenzen"),
              onTap: () {
                setState(() {
                  TextContainer;
                });
              }),
          ListTile(
              title: const Text("emmFlex"),
              onTap: () {
                setState(() {
                  TextContainer;
                });
              }),
          ListTile(
              title: const Text("RayEmi2010"),
              onTap: () {
                setState(() {
                  TextContainer;
                });
              }),
        ])),*/
        CustomScrollView(clipBehavior: Clip.antiAlias, slivers: <Widget>[
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
                return Container(
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 53, 80, 112),
                    ),
                    child: containersBig[index]);
              },
              childCount: containersBig.length,
            ),
          ),
          SliverToBoxAdapter(
            child: const BottomBar(),
          )
        ]),
      ]),
    );
  }
}

List<String> titleList = [
  'Leistungen',
  'E-Projektierung',
  'SPS/Steuerung',
  'Visualisierung',
  'Betriebsdatenerfassung',
  'Prozessleitsysteme',
  'Referenzen',
  'emmFlex',
  'RayEmi2010',
];

List<String> textList = [
  text2,
  text3,
  text4,
  text5,
  text6,
  text7,
  text8,
  text9,
  text10,
];

String text2 =
    'Ob Metall, Holz oder Lebensmittel - jeder Werkstoff, jedes Erzeugnis und jeder Prozess ist anders. Deshalb legen wir großen Wert darauf, sich mit jeder Anlage auseinanderzusetzen und diese strukturiert zu automatisieren.\n\nDie RAYEN INTEC GmbH automatisiert Ihre Industrieanlage - wir sorgen für Dynamik. Vom Beginn der Anforderungsanalyse, Erstellung von Lasten- und Pflichtenheft, E-Projektierung, SPS-Programmierung, Visualisierung, Inbetriebnahme bis hin zu Wartung und Support bekommen Sie als Kunde kompetenten Service aus einer Hand. Ebenfalls realisieren wir die Anbindung des Prozesses an ERP-Systeme, entwickeln Prozessleitsysteme und erhöhen den Automatisierungsgrad auf ganzer Linie.\n\nBitte informieren Sie sich auf den folgenden Seiten über unsere Produkte und Dienstleistungen. Bei Interesse freuen wir uns auf Ihre Kontaktaufnahme mit unserem Vertrieb.';

String text3 =
    'Am Beginn jeder Ausführung steht das E-Projekt. Mittels EPLAN erstellen unsere Projektanten anhand der abgestimmten Aufgabenstellung ein detailliertes E-Projekt für die nachfolgenden Arbeiten:\n\n➡ Schaltanlagenbau \n➡ Verkabelung \n➡ SPS-Programmierung\n➡ Datenanbindung / Datenübergabe \n➡ Inbetriebnahme \n\nNach Projektabschluss wird der vor Ort installierte Ist-Zustand in einer revidierten Enddokumentation dem Kunden übergeben - als gedrucktes Exemplar und auf CD/Disk/Stick.';

String text4 =
    'Kernstück jeder Schaltanlage ist eine speicher-programmierbare Steuerung (SPS). \n\nIhre Auslegung, Konfiguration, Einbau und Programmierung wird mittels moderner Technik kundenspezifisch realisiert. Die Inbetriebnahme und Anpassung vor Ort bietet die Gewähr einer optimalen Nutzung für Ihre installierte Anlage. \n\nSpezialisiert sind wir seit Jahren auf die Komponenten von Siemens - S5, S7 sowie deren Schnittstellen und Entwicklungswerkzeugen.\n\nService und Wartung ab Übergabe sind selbstverständlich - Minutenschnelle Diagnose mittels Fernwartung und nur ganz selten wenige Zeit später vor Ort.';

String text5 =
    'Die bildhafte Darstellung mittels an die SPS angeschlossener Computer und die Bedienung per Mausklick löst zunehmend frühere Schaltfelder ab. Hochwertige Workstation-PCs oder Server für 24h-betrieb stellen eine verlässliche Basis zur Bedienung der Anlage.\n\nMittels mächtiger Visualisierungsprogramme, wie InTouch,  WinCC oder WinCC-flexible, werden übersichtliche Anlagenbilder erstellt, die dem Bediener von seinem Arbeitsplatz aus in die Lage versetzen, seinen Prozess jederzeit zu kontrollieren und im Bedarfsfall einzugreifen. \n\nParallel besteht die Möglichkeit der Aufzeichung von Archivierungsdaten. Diese bieten eine erste Auswertungen und Analysen über Anlagenzustände und dienen als Grundlage für klassische Betriebsdatenerfassungssysteme (BDE-System) bzw. zur Übergabe an Fremdsysteme zur weiteren Auswertung oder Bearbeitung.';

String text6 =
    'Irgendwo findet sich bei genauer Betrachtung immer etwas, das sich verbessern ließe. \n\nSPS, Visualiserung, PLS oder Produktanalysedaten - das bedeutet eine Unmenge verschiedenster Prozessdaten. Im Idealfall dienen sie zur Erfassung von Daten - im Nachgang zur Veranschaulichung der Arbeitsprozesse und somit zu deren Optimierung. Wir sichten und werten aus. Unsere Software-Lösungen erledigen die Betriebsdatenerfassung entsprechend ihrer Anforderungen. Wir führen alle Daten zusammen und schaffen individuelle Oberflächen zur Dateneinsicht und Datenauswertung. Die Erstellung von Berichten oder grafischer Darstellungen der kommulierten Daten ist genauso möglich wie der Excel-Export. Als Backend vertrauen wir auf Lösungen von Microsoft - Windows-Server, SQL-Server und Reporting-Server. Als Frontend nutzen wir Wonderware Intouch oder Microsoft Visual Studio .net. Hiermit bieten wir größtmögliche Kompatibilität und ermöglichen Schnittstellen für eigene Auswertungen oder Weiterverarbeitungsprozesse.';

String text7 =
    'Prozessleitsysteme (PLS, engl. PCS) dienen zum Führen von verfahrenstechnischen Anlagen. Sie decken den gesamte Bereich der Automatisierungs- und Informationstechnik vom Feld (prozessnahe Komponenten) bis hin zur Bedien- und Beobachtungsstation (BuB) ab - mitunter auch bis zur Unternehmensleitebene.\n\nBasierend auf fundiertem, verfahrenstechnischem Know-how erstellen wir Prozessleitsysteme für Brauereien, Molkereien, der Nahrungsmittels- und Getränkeindustrie sowie Gießereianlagen. \n\nDie grundlegenden resultierenden Vorteile aus Prozessleitsystemen sind nachfolgend nur kurz benannt:\n\n➡ Realisierung von einheitlichen Standards bei Hard- und Software \n➡ Minimierung von Engineeringkosten \n➡ Möglichkeiten der Prozessoptimierung \n➡ einfache und sichere Prozessführung \n➡ benutzerdefinierte komfortable Bedienung \n➡ fehlersichere Prozesslösungen \n➡ Schaffung von Redundanz auf mehreren Ebenen \n➡ Integration verschiedenster Feldbustechniken \n➡ Verarbeitung von Chargenprozessen \n➡ Anbindungsmöglichkeiten an bestehende EDV-Anlagen\n➡ Client/Server-Architektur bei Mehrplatzsystemen';

String text8 =
    'Die Automatisierung von Produktionsabläufen, umweltgerechte Steuerung von Verbrennungsanlagen sowie Steuerung und Regelung von Einzelaggregaten und technologischen Linien sind globale Begriffe für unsere realisierten Projekte in der Lebensmittelindustrie (Molkereien, Brauereien, Schokoladenwerke),  Schwerindustrie (Walzwerke, Gießereien, Krananlagen) und Industrieofenbau (Krematorien, Tierkörperverwertungsanlagen).\n\nUnter den Begriffen Betriebdatenerfassung (BDE), Visualisierung von Produktionsabläufen, automatische Kransteuerung, Hochregallager-Automatisierung, Steuerung von Parkhaussystemen, Steuerung von CIP-Anlagen in Molkereien und Brauereien, Käsefertigungsautomatisierung verbergen sich komplexe Projekte, die in mehrmonatigen Arbeiten zur vollen Zufriedenheit unsere Auftraggeber umgesetzt wurden und reibungslos arbeiten.\n\nWeitere Informationen auf Anfrage.';

String text9 =
    'Speziell auf den Einsatz in Kremationsanlagen zugeschnitten wurde das Emissions-Auswertesystem „emmFlex“, dass die in der 27. BiMschV geforderten Parameter CO, Staub und Nachbrennraumtemperatur erfasst. Es umfasst ein Komplettpaket, bestehend aus Messgas-Entnahmesonden, Verschlauchung, Rauchgasreinigung und Rauchgasanalyse mit eignungsgeprüfter Technik sowie optional dem zugehörigen Emissionsauswerterechner RayEmi2010. Die jeweiligen Messgas-Entnahmetechnik wird in die bauseits vorhandenen Entnahmestutzen eingebaut und mit der im Meßschrank installierten Gasreinigungstechnik verbunden.';

String text10 =
    'Der Emissionsauswerterechner kann sowohl als Sologerät an vorhandene Messwerterfassungstechnik als auch in Kombination mit dem Emissionsauswertesystem „emmFlex“ eingesetzt werden. Die Auswerteeinrichtung besteht aus einer vor Ort installierten Datenerfassungseinheit DES-RayEmi und dem Auswerterechner DAS-RayEmi. Er klassiert die zu überwachenden Werte entsprechend der „Bundeseinheitlichen Praxis bei der Überwachung von Emissionen“ vom 13.06.2005. Der Auswerte-PC wird im Arbeitsbereich des Bedienpersonals aufgestellt und erfasst, verarbeitet und wertet die Messwerte aus. Grafische Darstellungen unterstützen dabei das Bedienpersonal bei der Führung des Einäscherungsprozesses. \n\nDer Emissionsauswerterechner RayEmi2010 wurde vom Umweltbundesamt am 10.Januar 2011 als eignungsgeprüft zertifiziert und damit für den Einsatz in Kremationsanlagen freigegeben.';

class TextContainer extends StatelessWidget {
  const TextContainer({
    super.key,
    required this.titleInd,
    required this.textInd,
  });

  final int titleInd;
  final int textInd;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(8),
        alignment: Alignment.topLeft,

        //color: Colors.teal[200],
        child: SingleChildScrollView(
            child: Column(children: <Widget>[
          Text(titleList[titleInd],
              style:
                  const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          Text(textList[textInd], style: const TextStyle(fontSize: 15)),
          const SizedBox(height: 10),
        ])));
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
