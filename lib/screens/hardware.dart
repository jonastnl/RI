import 'package:flutter/material.dart';
import 'package:mynotes/screens/automatisierung.dart';

import 'package:mynotes/screens/home.dart';
import 'package:mynotes/screens/jobs.dart';
import 'package:mynotes/screens/kontakt.dart';
import 'package:mynotes/screens/unternehmen.dart';
import 'package:mynotes/widget/bottom_bar.dart';
import 'package:mynotes/widget/myContainer1.dart';

class Hardware extends StatefulWidget {
  const Hardware({super.key});

  @override
  State<Hardware> createState() => _Hardware();
}

class _Hardware extends State<Hardware> {
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
            const Color.fromARGB(255, 204, 55, 40).withOpacity(0.8),
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
              onTap: () {
                navigateToImpressum(context);
              },
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

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    List<Widget> containersBig = [
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
        text: 'Leistungen',
        text2:
            'Wir verstehen uns als Partner unserer Kunden. Mit diesem Anspruch unterstützen wir Sie bei der Planung und Realisierung \nIhrer IT-Ausstattung und sorgen für IT-Sicherheit in Ihrem Unternehmen.\n\nEin leistungsfähiges IT-System ist heute für den Erfolg eines Unternehmens lebenswichtig. Die RAYEN INTEC GmbH berät \nSie in IT-Fragen, betreut und optimiert Ihr IT-System unter Einsatz leistungsstarker und zuverlässiger IT-Lösungen und IT-Produkte. \n\nHier ein Überblick aus unserem Leistungsspektrum:\n• IT-Betrieb - bestehend aus Betreuung, Überwachung, Patch-Management, Helpdesk und Vor-Ort-Service\n• Client-/Serverlösungen - wie z.B. Microsoft Windows Server, Small Business Server, Exchange, SQL, Linux, Unix\n• Betreuung von 3rd-Party-Software, ERP, CRM, Oracle, Citrix, Grafik, etc\n• Vertrieb, Installation und Konfiguration sämtlicher Hardware und Software \n• Kommunikation via Mailserver und EDV-Faxlösungen, Apple iPhone- & BlackBerry-Anbindungen \n• Enterprise-Lösungen: Clustering, Terminal-Dienste, Citrix, Virtualisierung Hyper-V, Xen und VMware \n• Internet-Anbindung über Breitband-DSL, ISDN, Standleitung, VPN, VoIP, Tele-Working-Arbeitsplätze \n• Programmierung von Individualsoftware \n• Consulting im Bereich IT-Sicherheit - Firewall, Antivirus, Backup, VPN, Risko-Management, etc.\n• Urlaubsvertretung, Mitarbeiterüberlassung, Outsourcing\n• Schulungen - Microsoft Windows, Office , Messaging, Linux, Unix, Mac OSX',
        nav1: null,
        buttonText: 'mehr Erfahren...',
      ),
    ];
    List<Widget> containersMid = [
      MyContainer1(
        context: context,
        alignment: Alignment.topLeft,
        color: const Color.fromARGB(255, 53, 80, 112).withOpacity(1),
        text: 'PC Hard- und Software',
        text2:
            'Ein Netzwerk verbindet. Wir übernehmen den Komplettaufbau von IT-Systemen.\n\nNeben dem Verkauf von Netzwerken, Servern, Computern, Druckern, Software sowie Zubehör beschäftigen wir uns mit Sicherheitslösungen, dem Betrieb und Support von IT-Systemen und der Einbindung bzw. Anpassung an die Anforderung unserer Kunden. \n\nWir beraten Sie im Hinblick auf zukünftige Anforderungen an Ihre Geräte und helfen Ihnen bei der Planung und Realisierung oder Erweiterung von IT-Systemen. Dabei erfinden wir den Computer nicht jeden Tag neu, sondern vertrauen auf Partner und Anbieter mit langjähriger IT-Erfahrung, um bestmögliche Leistung abliefern zu können. Wir arbeiten dabei mit Markenherstellen zusammen, deren Produkte und Services geprüft sind und nehmen an deren Zertifizierungsprogrammen teil.',
        nav1: null,
        buttonText: 'mehr Erfahren...',
      ),
      SizedBox(
          height: screenSize.height * 0.4,
          width: screenSize.width,
          child: Image.asset(
            'assets/images/pexels-cátia-matos-1072179.jpg',
            fit: BoxFit.cover,
          )),
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
        color: const Color.fromARGB(255, 154, 3, 30).withOpacity(0.5),
        text: 'Sicherheit',
        text2:
            'Wir übernehmen den Schutz Ihres Netzwerks gegen Computer-Viren und Datendiebe. Lehnen Sie sich das nächste Mal entspannt zurück, wenn in der Presse wieder über einen neuen Wurm berichtet wird. \n\nWir kümmern uns um präventive technische Werkzeuge wie Firewalls und Intrusion-Detection-Systeme, als auch um durchdachte Grundsätze (Policies), die den Menschen als Anwender in das System einbezieht. Schutz nicht nur von Außen - auch von Innen besteht Schutzbedarf. \n\nUnsere Leistungen im Bereich Computer-Sicherheit: \n• Security-Auditing Ihres Netzwerkes mit dafür geeigneten Tools \n• Konfiguration von Router, Firewalls, Security-Appliances, Antivirusschutzlösungen, etc. \n• 24/7-Monitoring der relevanten Systeme durch unsere Nagios-Server \n• Schnelle Reaktion beim Bekanntwerden von neuen Sicherheitslücken \n• Beratung und Einrichtung von geeigneten Backup-Strategien (gesamtheitliche Lösungen) \n• Beratung und Einsatz zu Themen Datenablage, Datensicherung, Archivierung, Risiko-Management, etc. \n• Schulung Ihrer Mitarbeiter im Unternehmen zum Thema Sicherheit ',
        nav1: null,
        buttonText: 'mehr Erfahren...',
      ),
      MyContainer1(
        context: context,
        alignment: Alignment.topLeft,
        color: const Color.fromARGB(255, 154, 3, 30).withOpacity(0.5),
        text: 'Webdesign',
        text2:
            'Im Webdesign setzen wir ganz auf Erfahrung. Nur wer schon eine große Anzahl von Internetseiten gestaltet und sich im Internet mit dem geschulten Blick eines Fachmanns bewegt, kann aus dem notwendigen Ideenpool das grafische Konzept herausfinden, das Ihr Unternehmen am besten darstellt. \n\nProjekt-Management - der erste Schritt zu einer erfolgreichen Website ist eine intensive Beratung, bei der Ziele und Zielgruppen exakt definiert werden. Wir entwickeln zusammen mit Ihnen die Struktur, das Interaktionsdesign und das Online-Marketing für Ihre Internetseite. \n\nIhr Internetauftritt sollte heutzutage auf einem Content Mangement System fundieren. Sie haben damit die Möglichkeit eigenständig die Inhalte der Internetseiten zu ändern. Wir versuchen diesem Ansatz auch bei hochgrafischen Websites gerecht zu werden. Schlagworte wie E-Commerce & Online-Shop, Online-Marketing, RSS, SilverLight-, Flash-Animation, Usability und Barrierefreiheit sind uns stets ein Begriff. \n\nTechnik/Webhosting Wir setzen sowohl die Open-Source-Technologien Linux, Apache, PHP und MySQL als auch die Microsoft-Produkte wie MS-IIS und MS-SQL ein. Wir bieten Ihnen damit eine sichere Plattform für ihren individuellen Webauftritt.! ',
        nav1: null,
        buttonText: 'mehr Erfahren...',
      ),
      SizedBox(
          height: screenSize.height * 0.4,
          width: screenSize.width,
          child: Image.asset(
            'assets/images/pexels-cátia-matos-1072179.jpg',
            fit: BoxFit.cover,
          )),
    ];

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
        color: const Color.fromARGB(255, 154, 3, 30).withOpacity(0.5),
        text: 'Wartung',
        text2:
            'Im Rahmen einer umfassenden zuverlässigen EDV-Betreuung bieten wir Ihnen kalkulierbare Servicedienstleistungen in Form von Wartungsverträgen oder auch als kostengünstigere vertragsfreie Variante sowie den Anwender-Support: \n\n• Serviceverträge / EDV-Wartungsverträge \n• EDV-Wartung by call (vertragsfrei) \n• Anwender-Support / Helpdesk \nUnser Angebot bezieht sich auf die Betreuung aller mit IT verbundenen Aufgaben, die regelmäßig als Wartung erfolgen sollten: \n• Analyse und Auswertung der Systemprotokolle \n• Test und Durchführung von Systemupdates (Firmware-Updates, Software-Updates für Betriebssysteme, Office usw.) \n• Tape-Wechsel, Kontrolle von Backups, Funktionstest für Recovery (Test von Datenrücksicherungen) \n• Analyse von Virenscannern und Firewall-Lösungen \n• Überprüfung der Notstromversorgung (USV) \n• Prüfen der Netzwerk-/ Telefon-Verkabelung (v.a. bei Netzwerkfehlern) \n• Hardwarekontrolle von Servern, Clients, Netzwerkgeräten, Druckern \n• Festplattenanalyse und Datenbereinigung (SMART Daten auslesen), Defragmentierung \n• Gerätereinigung (Server, PCs, Drucker, Klimageräte) \n• Optimierung von Arbeitsprozessen \n• Klärung von Anwenderfragen \n• Dokumentation der erfolgten Tätigkeiten/Massnahmen/Netzwerkdokumentation',
        nav1: null,
        buttonText: 'mehr Erfahren...',
      ),
    ];

    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: PreferredSize(
          preferredSize: Size(screenSize.width, 1000),
          child: myAppBar(context),
        ),
        body: CustomScrollView(slivers: <Widget>[
          SliverToBoxAdapter(
            //maintainBottomViewPadding: true,

            child: Column(children: <Widget>[
              SizedBox(
                  height: screenSize.height * 0.4,
                  width: screenSize.width,
                  child: Image.asset(
                    'assets/images/porsche.jpg',
                    fit: BoxFit.cover,
                  )),
            ]),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.4,
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
                childAspectRatio: 1.8,
                mainAxisSpacing: 0.0,
                crossAxisSpacing: 0.0),
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
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.4,
                mainAxisSpacing: 0.0,
                crossAxisSpacing: 0.0),
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
          const SliverToBoxAdapter(
            child: BottomBar(),
          )
        ]));
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
