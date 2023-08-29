import 'package:flutter/material.dart';

import 'package:mynotes/screens/jobs.dart';

import 'package:mynotes/widget/appbar.dart';
import 'package:mynotes/widget/bottom_bar.dart';
import 'package:mynotes/widget/myContainer1.dart';

class JobsSeperate extends StatefulWidget {
  const JobsSeperate({Key? key, required this.title1, required this.text1})
      : super(key: key);

  final String title1;
  final String text1;

  @override
  State<JobsSeperate> createState() => _JobsSeperate();
}

class _JobsSeperate extends State<JobsSeperate> {
  String title2 = '';

  List<String> jobTitle = [
    'Automatisierungstechniker (m/w)',
    'SPS-Programmierer (m/w)',
    'Elektriker/Elektroniker/Elektroinstallateur als Servicetechniker (m/w)',
    'IT-System-Administrator (m/w)'
  ];

  List<String> jobText = [
    'Für die Verstärkung unseres Teams erfahrener Ingenieure, Techniker und Elektrofacharbeitern suchen wir eine(n) Dipl.-Ing./Bachelor/Master für Elektro- oder Automatisierungstechnik für folgendes Aufgabenspektrum: \n\n• Design, Projektierung und Realisierung von Automatisierungssystemen für die Fertigungs- und Prozessautomation \n• Erstellen von SPS-, HMI- und SCADA-Applikationen \n• Selbstständige Realisierung von der Konzeption über die Programmierung bis zur Inbetriebnahme im In- und Ausland \n• Durchführung von Betreuungsarbeiten per Teleservice oder vor Ort \n\nVoraussetzungen: \n\n• Abgeschlossenes Studium im Bereich Elektrotechnik/Automatisierungstechnik/Mechatronik \n• Praktische Erfahrung im Bereich SPS- und HMI-Programmierung \n• Analytisches Denkvermögen; selbständige und lösungsorientierte Arbeitsweise \n• Englischkenntnisse, Teamfähigkeit, verantwortliches Arbeiten, Zuverlässigkeit, Flexibilität \n• Reisebereitschaft, kundenorientiertes Auftreten, konstruktive Kommunikationsführung \n• allg. EDV-Kenntnisse im Umgang mit MS-Windows, MS-Office, etc \n\nWir bieten: \n\n• Interessante und anspruchsvolle Projekte in verschiedenen Produktionsbereichen \n• Qualifikation und Weiterbildung \n• Flexible Arbeitszeiten sowie Home-Office-Möglichkeiten \n• Kreative Arbeitsatmosphäre in dynamischen Team verschiedenster Spezialisten \n• ein junges, hoch qualifiziertes und sympathisches Team \n\nWir freuen uns auf Ihre Bewerbung: ',
    'Für die Verstärkung unseres Teams erfahrener Ingenieure, Techniker und Elektrofacharbeitern suchen wir eine(n) Dipl.-Ing./Bachelor/Master für Elektro- oder Automatisierungstechnik.\n\nIhre Aufgaben bei uns:\n\n• Design und Erstellung von Automatisierungssystemen\n• Erstellen von SPS-, HMI- und SCADA-Applikationen\n• selbstst. Realisierung von der Konzeption bis zur Inbetriebnahme vor Ort\n• Service und Support per Fernwartung\n\nIhr Profil:\n\n• Studium im Bereich Elektrotechnik/Mechatronik/Automatisierungstechnik\n• mehrjährige Berufserfahrung\n• Kenntnisse von Siemens S7 und TIA, HMI-Entwicklungssoftware\n• Unterstützung und Serviceleistungen im In- und Ausland\n• Erfahrung in Software-und Datenbankentwicklung\n• allgemeine EDV-Kenntnisse in Microsoft-Produkten (Windows, Office)\n• hohe Kommunikations- und Teamfähigkeit\n• serviceorientierte Einsatzbereitschaft\n• analytisches Denken und konzeptionelle Stärke\n• gute Kommunikationsfähigkeit auf Deutsch und Englisch in Wort und Schrift\n\nWir bieten:\n\n• Interessante und anspruchsvolle Projekte in verschiedenen Produktionsbereichen\n• Qualifikation und Weiterbildung\n• Flexible Arbeitszeiten sowie Home-Office-Möglichkeiten\n• Kreative Arbeitsatmosphäre in dynamischen Team verschiedenster Spezialisten\n• ein junges, hoch qualifiziertes und sympathisches Team\n\nWir freuen uns auf Ihre Bewerbung:',
    'Für die Verstärkung unseres Teams erfahrener Ingenieure, Techniker und Elektrofacharbeitern suchen wir eine(n) Servicetechniker für Elektro- oder Automatisierungstechnik.\n\nIhre Aufgaben bei uns:\n\n• Durchführung von Servicetätigkeiten an Schaltanlagen\n• Schaltschrankbau und Elektroinstallation im Schwachstrombereich\n• Mitarbeit bei Neubau- und Umbauprojekten\n• Montage und Verdrahtung elektrischer Komponenten\n• Installation und Inbetriebnahme von Netzwerkkomponenten\n• Einbau und Installation elektrischer Anlagen\n• Überprüfung der Sicherheit und Funktionsfähigkeit\n• Erweiterungsbauten, Störbehebungen, Wartungen und Reparaturen an Elektroanlagen unserer Kunden\n• Durchführung von Inbetriebnahmen\n• Dokumentation der geleisteten Arbeiten\n• Service und Support per Fernwartung\n\nIhr Profil:\n\n• Erfolgreich abgeschlossene elektronische Ausbildung oder vergleichbare Ausbildung mit Berufserfahrung\n• Grundkenntnisse von Siemens S7 und Umgang HMI-Entwicklungssoftware\n• Unterstützung und Serviceleistungen im In- und Ausland\n• allgemeine EDV-Kenntnisse in Microsoft-Produkten (Windows, Office)\n• hohe Kommunikations- und Teamfähigkeit\n• serviceorientierte Einsatzbereitschaft\n• mehrjährige Berufserfahrung\n• gute Kommunikationsfähigkeit auf Deutsch und Englisch in Wort und Schrift\n\nWir bieten:\n\n• Interessante und anspruchsvolle Projekte in verschiedenen Produktionsbereichen\n• Qualifikation und Weiterbildung\n• Flexible Arbeitszeiten sowie Home-Office-Möglichkeiten\n• Kreative Arbeitsatmosphäre in dynamischen Team verschiedenster Spezialisten\n• ein junges, hoch qualifiziertes und sympathisches Team\n\nWir freuen uns auf Ihre Bewerbung:',
    'Zur Verstärkung unserer EDV-Abteilung suchen wir:\n\nZu ihren Aufgaben gehören:\n\n• Betreuung von Serversystemen und Arbeitsplätzen\n• Administration von Rechnernetzen und WAN-Verbindungen\n• Problemanalyse und Lösung von Störungen\n• Installation von Hard- und Software\n• Anwendungsbetreuung, Support, Dokumentation\n\nFachliche Anforderungen:\n\n• erfolgreich abgeschlossene(s) Studium/IT-Ausbildung\n• mehrjährige Berufserfahrung\n• weitgehende Kenntnisse mit Microsoft-Produkten\n• Windows Server, SQL-Server, Exchange-Server, Office-Produkte\n• Erfahrung mit Pflege und Betrieb von Antiviren- und Backup-Lösungen\n\nPersönliche Fähigkeiten:\n\n• hohe Kommunikations- und Teamfähigkeit\n• serviceorientierte Einsatzbereitschaft\n• analytisches Denken und konzeptionelle Stärke\n• gute Kommunikationsfähigkeit auf Deutsch und Englisch in Wort und Schrift\n• Führerschein der Klasse B\n\nWir freuen uns auf Ihre Bewerbung:',
  ];

  @override
  Widget build(BuildContext context) {
    List<Widget> containersBig = [
      MyContainer1(
        context: context,
        alignment: Alignment.topLeft,
        color: const Color.fromARGB(255, 154, 3, 30).withOpacity(0.5),
        text: widget.title1,
        text2: widget.text1,
        nav1: null,
        buttonText: 'Jetzt Bewerben... Link einfügen',
      ),
    ];

    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: PreferredSize(
          preferredSize: Size(screenSize.width, 1000),
          child: const MyAppBar(),
        ),
        body: CustomScrollView(
          slivers: <Widget>[
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
                  crossAxisCount: 1,
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
            const SliverToBoxAdapter(
              child: BottomBar(),
            ),
          ],
        ));
  }
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
