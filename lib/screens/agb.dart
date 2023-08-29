import 'package:flutter/material.dart';
import 'package:mynotes/screens/automatisierung.dart';
import 'package:mynotes/screens/hardware.dart';

import 'package:mynotes/screens/home.dart';
import 'package:mynotes/screens/jobs.dart';
import 'package:mynotes/screens/kontakt.dart';
import 'package:mynotes/screens/unternehmen.dart';
import 'package:mynotes/widget/bottom_bar.dart';
import 'package:mynotes/widget/myContainerPic.dart';

class Agb extends StatefulWidget {
  const Agb({super.key});

  @override
  State<Agb> createState() => _Agb();
}

class _Agb extends State<Agb> {
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

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    List<Widget> containersBig = [
      MyContainerPic(
        context: context,
        alignment: Alignment.topLeft,
        color: const Color.fromARGB(255, 53, 80, 112).withOpacity(1),
        text: 'AGBs',
        text2:
            'Allgemeine Geschäftsbedingungen RAYEN INTEC GmbH\n1. Allgemeines\n1.1 Die Grundlage der Geschäftsbeziehung zwischen Auftraggeber/Käufer und Auftragnehmer/Verkäufer bildet das Recht der Bundesrepublik Deutschland sowie die nachfolgenden „Allgemeinen Geschäftsbedingungen der RAYEN INTEC GmbH“.\n1.2 Für die Geschäftsbeziehung zwischen RAYEN INTEC GmbH und dem Auftraggeber - auch für alle zukünftigen Geschäfte - gelten ausschließlich die nachfolgenden Allgemeinen Geschäftsbedingungen in ihrer zum Zeitpunkt der Bestellung gültigen Fassung. Abweichende Bedingungen des Auftraggebers erkennt RAYEN INTEC GmbH nicht an, es sei denn, RAYEN INTEC GmbH hätte ausdrücklich schriftlich ihrer Geltung zugestimmt.\n1.3 Durch Unterschriftsleistung auf dem Auftrag gelten diese Allgemeinen Geschäftsbedingungen als vereinbart.\n2 Vertragsschluss und Rücktritt\n2.1 Alle Angebote sind freibleibend und unverbindlich. Ein Auftrag gilt erst dann als angenommen, wenn er innerhalb von 3 Wochen nach Eingang von RAYEN INTEC GmbH schriftlich bestätigt oder die Lieferung bereits ausgeführt wurde.\n2.2 Nebenabreden, Zusicherungen und sonstige Vereinbarungen, die vor oder bei Vertragsantrag bzw. Abschluss getroffen werden, bedürfen der Schriftform. Auftragsänderungen können nur in gegenseitiger Vereinbarung durchgeführt werden und bedürfen ebenfalls der Schriftform.\n2.3 Der Auftragnehmer ist nach Bestellung bei RAYEN INTEC GmbH 3 Wochen an seinen Auftrag gebunden. Bei Stornierung eines Auftrages werden Stornierungsgebühren in Höhe von 3% des Auftragswertes, mindestens aber 15 € erhoben.\n2.4 Angegebene Liefertermine sind unverbindlich, es sei denn, sie wurden ausdrücklich schriftlich vereinbart\n2.5 RAYEN INTEC GmbH behält sich den Rücktritt vom Vertrag vor, wenn die Ware trotz zumutbarer Anstrengungen nicht oder nur wesentlich überteuert beschafft werden kann. In diesem Fall wird der Kunde unverzüglich darüber informiert, dass die bestellte Ware nicht zur Verfügung steht. Bei bereits bezahltem Kaufpreis wird dieser unverzüglich erstattet.\n2.6 Bei nachträglichen Wünschen des Auftraggebers zur Änderung oder Ergänzung des vertraglichen Leistungsinhalts verlängert sich die vereinbarte Lieferzeit in angemessenem Umfang\n2.7 (1) Eine Verlängerung der Lieferzeit tritt auch ein bei: a) Vorliegen außerhalb des Willens von RAYEN INTEC GmbH liegenden unvorhergesehenen Ereignissen, wie z.B. höhere Gewalt, Aus- und Einfuhrverbote, etc. oder b) Verzögerungen oder Ausfällen bei der Anlieferung von vertragsgegenständlichen Teilen an RAYEN INTEC GmbH, etc. oder c) Streik bzw. Aussperrung bei RAYEN INTEC GmbH (2) Sinngemäß gilt Absatz 1 (a – c) auch dann, wenn diese Umstände bei einem Lieferanten oder Unterlieferanten von RAYEN INTEC GmbH vorliegen. (3) In den Fällen des Absatzes 1 bleiben die Rechte des Kunden aus §323 BGB unberührt.\n2.8 Ist ein Leistungshindernis nicht nur vorübergehend und nicht von RAYEN INTEC GmbH verschuldet, ist RAYEN INTEC GmbH berechtigt, vom Vertrag zurückzutreten. Dem Auftraggeber stehen in diesem Fall keine Ansprüche im Zusammenhang mit dem Vertragsrücktritt gegen RAYEN INTEC GmbH zu.\n2.9 Wenn erkennbar ist, dass der Auftraggeber nicht in der Lage ist, seinen Zahlungsverpflichtungen nachzukommen, ist RAYEN INTEC GmbH berechtigt vom Vertrag zurückzutreten, Vorkasse zu verlangen oder bei vereinbarter Teilzahlung die Vorbehaltsware zurückzufordern.\n2.10 RAYEN INTEC GmbH kann Konstruktions- und Formänderungen des Vertraggegenstandes vornehmen, soweit diese Veränderungen nicht grundlegend sind und durch diese Veränderungen der gewöhnliche oder vertragsgemäße Zweck unerheblich eingeschränkt wird.\n3 Lieferung\n3.1 Ist keine andere Lieferform vereinbart, erfolgt Abholung der Ware durch den Auftraggeber ab Lager RAYEN INTEC GmbH. Die Gefahr eines zufälligen Untergangs oder einer zufälligen Verschlechterung der zu liefernden Sachen geht auf den Auftraggeber über, sobald sie dem Auftraggeber übergeben wurden. Gleiches gilt, sobald eine Sendung an die den Transport ausführende Person übergeben worden ist oder zwecks Versendung das Lager von RAYEN INTEC GmbH verlassen hat. Verzögert sich der Versand auf Wunsch des Kunden, geht die Gefahr des zufälligen Untergangs oder der zufälligen Verschlechterung mit der Meldung der Versandbereitschaft auf den Auftraggeber über.\n3.2 Die Warenanlieferungen erfolgen, so nicht anders schriftlich vereinbart, über eigene Anlieferung oder unfrei per Paketdienst oder.\n3.3 Die Warenanlieferung ist unverzüglich auf Vollständigkeit und Übereinstimmung mit dem Lieferschein/ Rechnung zu überprüfen. Diesbezügliche Reklamationen, die später als 3 Arbeitstage nach der Anlieferung bei uns eintreffen, können nicht mehr berücksichtigt werden.\n3.4 Transportschäden sind innerhalb von 5 Werktagen nach schriftlich an RAYEN INTEC GmbH zu melden.\n4 Eigentumsvorbehalt\n4.1 Die gelieferte Ware steht unter allen Formen des erweiterten Eigentumsvorbehalts.\n4.2 RAYEN INTEC GmbH behält sich das Eigentum an gelieferten Sachen bis zur vollständigen Zahlung aller RAYEN INTEC GmbH zustehenden Forderungen, einschließlich aller\nNebenkosten, wie beispielsweise Verpackungs- und Versandkosten vor.\n4.3 Bei Einbau in fremde Waren durch den Auftraggeber wird RAYEN INTEC GmbH Miteigentümerin an den neu entstehenden Produkten im Verhältnis des Wertes der durch die von ihr gelieferten Waren zu den mitverwendeten fremden Produkten. 4.4 Der Auftraggeber ist berechtigt, die von RAYEN INTEC GmbH unter dem beschriebenen Eigentumsvorbehalt gelieferten Sachen im ordnungsgemäßen Geschäftsgang weiter zu veräußern. Bereits im Zeitpunkt des Vertragsabschlusses mit RAYEN INTEC GmbH tritt der Auftraggeber seine Forderungen aus dieser Weiterveräußerung an RAYEN INTEC GmbH ab.\n4.5 Bei Pfändung oder anderer Beeinträchtigung durch Dritte ist der Auftraggeber verpflichtet, unverzüglich auf den Eigentumsvorbehalt und das Eigentum von RAYEN INTEC GmbH hinzuweisen. Zusätzlich ist der Auftragnehmer verpflichtet, RAYEN INTEC GmbH unverzüglich telefonisch oder per Fax unter Angabe des Sachverhalts zu informieren. Der Auftraggeber ist verpflichtet, RAYEN INTEC GmbH den Namen des oder der Dritten, die eine Pfändung betreiben oder sonstige Beeinträchtigungen verursachen, so mitzuteilen, dass RAYEN INTEC GmbH in der Lage ist, seine rechtlichen Interessen dem Dritten gegenüber zu wahren.\n4.6 RAYEN INTEC GmbH verpflichtet sich, die ihr zustehenden Sicherheiten auf Verlangen des Auftraggebers freizugeben, sofern ihr Wert die zu sichernden Forderungen um 20% übersteigt.\n5 Preise Vereinbarte Preise sind Nettopreise und verstehen sich in €. Die gesetzliche jeweilige Mehrwertsteuer wird zuzüglich berechnet, ebenso wie die Verpackungs- und Versandkosten.\n6 Zahlung\n6.1 Für die Lieferung gelten die vereinbarten Zahlungsbedingungen (Bar- Nachnahme, Verrechnungsscheck, Rechnungslegung). Erstbestellungen erfolgen prinzipiell gegen Bar-Nachnahme.\n6.2 Alle Zahlungen haben, soweit nicht anders vereinbart, innerhalb des auf den Rechnungen enthaltenen Zahlungsziels zu erfolgen. Bei Überschreiten des benannten Zahlungsziels befindet sich der Auftraggeber ohne Mahnung im Zahlungsverzug.\n6.3 Im Falle des Zahlungsverzugs werden Verzugszinsen in Höhe von 8% über dem Basiszinssatz der Deutschen Bundesbank fällig.\n7 Aufrechnung, Abtretung, Zurückbehaltung\n7.1 Ein Recht der Aufrechnung oder Abtretung steht dem Auftraggeber nur zu, wenn seine Gegenansprüche rechtskräftig festgestellt oder von RAYEN INTEC GmbH anerkannt sind. Außerdem ist er zur Ausübung eines Zurückbehaltungsrechts nur insoweit befugt, als sein Gegenanspruch auf dem gleichen Vertragsverhältnis beruht.\n8 Gewährleistung und Haftung\n8.1 Für alle von uns vertriebenen Produkte beträgt die Gewährleistungsfrist 24 Monaten gerechnet ab Gefahrenübergang. Diese Frist ist eine Verjährungsfrist und gilt auch für Ansprüche auf Ersatz von Mangelfolgeschäden, soweit keine Ansprüche aus unerlaubter Handlung geltend gemacht werden.\n8.2 Es besteht kein Gewährleistungsanspruch auf Verschleißteile und Verbrauchsmaterial. Ein Gewährleistungsanspruch besteht grundsätzlich nur dann, wenn ein Fabrikationsfehler vorliegt.\n8.3 Offensichtliche Mängel hat der Auftragnehmer RAYEN INTEC GmbH innerhalb von 2 Wochen mitzuteilen. Auf Verlangen muss diese Mängelrüge schriftlich erfolgen. Nach Ablauf dieser Rügefrist sind jegliche Gewährleistungsansprüche wegen offensichtlicher Mängel ausgeschlossen. In diesem Sinne offensichtlich sind Mängel, die so offen zutage treten, dass sie auch dem nicht fachkundigen Durchschnittskäufer ohne besondere Aufmerksamkeit und ohne weiteres auffallen.\n8.4 Bei mangelhafter Lieferung ist der Auftragnehmer zur Mangelbeseitigung durch kostenlose Nachbesserung, kostenlosen Austausch der fehlerhaften Teile oder Ersatzlieferung berechtigt. Der Auftraggeber muss zwei Versuche der Mängelbeseitigung des gleichen Mangels dulden. Schlagen Nachbesserung, Austausch oder Ersatzlieferung endgültig fehl, kann der Auftraggeber die anteilmäßige Herabsetzung der Vergütung oder Rückgängigmachung des Kaufvertrages verlangen.\n8.5 RAYEN INTEC GmbH ist nur gegenüber dem Auftraggeber gewährleistungspflichtig. Leistungen gegenüber Dritten werden nur nach schriftlicher Vereinbarung mit dem Auftraggeber erbracht.\n8.7 Sind die aufgetretenen Fehler auf Umstände zurückzuführen, die RAYEN INTEC GmbH nicht zu vertreten hat, sondern die aus der Sphäre und dem Risikobereich des Auftraggebers bzw. Endkunden stammen, entfällt eine Gewährleistungspflicht. Dies gilt z. B. bei Störungen infolge Benutzung ungeeigneten Betriebsmaterials oder im Falle einer Nichtbeachtung der Installationsvoraussetzungen. Des weiteren entfällt eine Gewährleistung, wenn der Kunde Änderungen oder Eingriffe am Kaufgegenstand vorgenommen hat, es sei denn, der Kunde weist im Zusammenhang mit der Fehlermeldung an RAYEN INTEC GmbH nach, dass der Eingriff für den Fehler nicht ursächlich war. Der Gewährleistungsanspruch erlischt auch bei fehlender oder unzureichender Wartung.\n8.8 Der Auftragnehmer soll Fehler, die bei vertragsgemäßer Nutzung auftreten, RAYEN INTEC GmbH unverzüglich in nachvollziehbarer\nForm mit Angabe der für die Fehlerbeseitigung notwendigen Informationen melden.\n8.9 Bei den verkauften Sachen findet die Fehlerbeseitigung am Sitz von RAYEN INTEC GmbH statt, es sei denn, es wurde etwas anderes vertraglich vereinbart. Der Auftraggeber hat die Ware ordnungsgemäß verpackt, einschließlich mitverkauften Zubehörs (z.B. Tastatur, Verbindungskabel, etc.) anzuliefern.\n8.10 Die Rücksendung defekter Geräte erfolgt ausschließlich auf Kosten und Gefahr des Auftraggebers.\n8.11 Rücksendungen, bei denen kein Fehler festgestellt wird (z.B. Bedienungsfehler des Auftraggebers), sind kostenpflichtig und werden dem Auftraggeber mit einer Bearbeitungspauschale von 25,- €, zuzüglich Versandkosten und MwSt. in Rechnung gestellt.\n8.12 Ein Anspruch auf Fehlerbeseitigung ist ausgeschlossen, wenn der Fehler nicht reproduzierbar ist oder nicht anhand von maschinell erzeugten Ausgaben aufgezeigt werden kann.\n8.13 Auf Wunsch des Auftraggebers durchgeführte Software-Installationen, wie z.B. Betriebssystempreloads sind kostenfrei und werden nicht Vertragsbestandteil. Gewährleistungsansprüche des Auftraggebers im Zusammenhang mit ausgeführten Software-Installationen sind ausgeschlossen.\n8.14 Bei Reparaturen werden Datenträger in der Regel formatiert. Für nicht erfolgte Datensicherung und Datenverluste, die sich infolge einer Instandsetzung ergeben, übernimmt RAYEN INTEC GmbH daher keine Haftung.\n8.15 Soweit sich nachstehend nichts anderes ergibt, sind weitergehende Ansprüche des Auftraggebers – gleich aus welchen Rechtsgründen – ausgeschlossen. RAYEN INTEC GmbH haftet deshalb nicht für Schäden, die nicht am Liefergegenstand selbst entstanden sind; insbesondere haftet RAYEN INTEC GmbH nicht für entgangenen Gewinn oder für sonstige Vermögensschäden des Auftraggebers.\n8.16 Soweit die Haftung von RAYEN INTEC GmbH ausgeschlossen oder beschränkt ist, gilt dies auch für die persönliche Haftung von Arbeitnehmern, Vertretern und Erfüllungsgehilfen.\n8.17 Diese Haftungsbeschränkung gilt nicht, soweit die Schadensursache auf Vorsatz oder grober Fahrlässigkeit beruht. Sie gilt ferner dann nicht, wenn der Auftraggeber Ansprüche aus §§1,4 Produkthaftungsgesetz geltend macht.\n9. Erfüllungsort und Gerichtsstand\n9.1 Erfüllungsort ist Saalfeld\n9.2 Als Gerichtsstand wird vereinbart, soweit Auftraggeber/Käufer prorogationsfähig ist, das für den Streitwert zuständige Gericht am Sitz des Auftragnehmers/ Verkäufers.\n10. Teilnichtigkeit Sollten einzelne Bestimmungen dieser Vereinbarung ganz oder teilweise unwirksam sein oder werden oder sollte sich in der Vereinbarung eine Lücke befinden, so soll hierdurch die Gültigkeit der übrigen Bestimmungen nicht berührt werden. Anstelle der unwirksamen Bestimmungen oder zur Ausfüllung der Lücke soll eine angemessene Regelung treten, die, soweit rechtlich möglich, dem beabsichtigten wirtschaftlichen Zweck am nächsten kommt.',
        nav1: null,
        pic: 'assets/images/porsche.jpg',
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
                    'assets/images/pexels-cátia-matos-1072179.jpg',
                    fit: BoxFit.cover,
                  )),
            ]),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                childAspectRatio: 1.5,
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
