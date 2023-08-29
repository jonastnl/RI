import 'package:flutter/material.dart';
import 'package:mynotes/widget/appbar.dart';
import 'package:mynotes/widget/bottom_bar.dart';
import 'package:mynotes/widget/myContainerPic.dart';

class Datenschutz extends StatefulWidget {
  const Datenschutz({super.key});

  @override
  State<Datenschutz> createState() => _Datenschutz();
}

class _Datenschutz extends State<Datenschutz> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    List<Widget> containersBig = [
      MyContainerPic(
        context: context,
        alignment: Alignment.topLeft,
        color: const Color.fromARGB(255, 53, 80, 112).withOpacity(1),
        text: 'Datenschutz',
        text2:
            'Grundsatz\nWir nehmen den Schutz Ihrer persönlichen Daten sehr ernst und behandeln Ihre personenbezogenen Daten vertraulich und entsprechend der gesetzlichen Datenschutzvorschriften sowie dieser Datenschutzerklärung.\n\nErheben von Daten\nWir erheben und verarbeiten personenbezogene Daten nur, soweit diese für die Begründung und inhaltliche Ausgestaltung oder Änderung des Rechtsverhältnisses erforderlich sind (Bestandsdaten). Personenbezogene Daten über die Inanspruchnahme unserer Internetseiten (Nutzungsdaten) erheben wir nicht.\n\nDatenverarbeitung auf dieser Internetseite\nWir erheben und speichern automatisch Informationen in Log Files, die Ihr Browser automatisch an uns übermittelt. Dies sind IP-Adresse, Browsertyp/ Browserversion, verwendetes Betriebssystem, Referrer URL und Uhrzeit der Serveranfrage. Diese Daten sind nicht bestimmten Personen zuordenbar. Eine Zusammenführung dieser Daten mit anderen Datenquellen wird nicht vorgenommen.\n\nNutzung von Cookies\nDie Internetseiten verwenden teilweise so genannte Cookies. Diese dienen dazu, unser Angebot nutzerfreundlicher, effektiver und sicherer zu machen. Cookies sind kleine Textdateien, die auf Ihrem Rechner abgelegt werden und die Ihr Browser speichert. Die meisten der von uns verwendeten Cookies sind so genannte „Session-Cookies“. Sie werden nach Ende Ihres Besuchs automatisch gelöscht. Cookies richten auf Ihrem Rechner keinen Schaden an und enthalten keine Viren.\n\nNichtverwendung\nWir nutzen nachfolgende Techniken über unser WWW-Angebot nicht: eMail-Newsletter, Kontaktfomular, Kommentarfunktion, eTracker, Bestellung, Buchungen, Zahlungsverkehr, Integration von sozialen Netzwerken wie Google+, Facebook, Twitter, Youtube, etc.\n\nDatenschutzerklärung für die Nutzung von Google Analytics\nDiese Website benutzt Google Analytics, einen Webanalysedienst der Google Inc. („Google“). Google Analytics verwendet sog. „Cookies“, Textdateien, die auf Ihrem Computer gespeichert werden und die eine Analyse der Benutzung der Website durch Sie ermöglichen. Die durch den Cookie erzeugten Informationen über Ihre Benutzung dieser Website werden in der Regel an einen Server von Google in den USA übertragen und dort gespeichert.\n\nMehr Informationen zum Umgang mit Nutzerdaten bei Google Analytics finden Sie in der Datenschutzerklärung von Google: https://support.google.com/analytics/answer/6004245?hl=de\n\nIP-Anonymisierung\nWir nutzen die Funktion "Aktivierung der IP-Anonymisierung" auf dieser Webseite. Dadurch wird Ihre IP-Adresse von Google jedoch innerhalb von Mitgliedstaaten der Europäischen Union oder in anderen Vertragsstaaten des Abkommens über den Europäischen Wirtschaftsraum zuvor gekürzt. Nur in Ausnahmefällen wird die volle IP-Adresse an einen Server von Google in den USA übertragen und dort gekürzt. Im Auftrag des Betreibers dieser Website wird Google diese Informationen benutzen, um Ihre Nutzung der Website auszuwerten, um Reports über die Websiteaktivitäten zusammenzustellen und um weitere mit der Websitenutzung und der Internetnutzung verbundene Dienstleistungen gegenüber dem Websitebetreiber zu erbringen. Die im Rahmen von Google Analytics von Ihrem Browser übermittelte IP-Adresse wird nicht mit anderen Daten von Google zusammengeführt.\n\nBrowser Plugin\nSie können die Speicherung der Cookies durch eine entsprechende Einstellung Ihrer Browser-Software verhindern; wir weisen Sie jedoch darauf hin, dass Sie in diesem Fall gegebenenfalls nicht sämtliche Funktionen dieser Website vollumfänglich werden nutzen können. Sie können darüber hinaus die Erfassung der durch das Cookie erzeugten und auf Ihre Nutzung der Website bezogenen Daten (inkl. Ihrer IP-Adresse) an Google sowie die Verarbeitung dieser Daten durch Google verhindern, indem sie das unter dem folgenden Link verfügbare Browser-Plugin herunterladen und installieren: https://tools.google.com/dlpage/gaoptout?hl=de\n\nWiderspruch gegen Datenerfassung\nSie können die Erfassung Ihrer Daten durch Google Analytics verhindern, indem Sie auf folgenden Link klicken. Es wird ein Opt-Out-Cookie gesetzt, dass das Erfassung Ihrer Daten bei zukünftigen Besuchen dieser Website verhindert:\nGoogle Analytics deaktivieren\n\nWiderspruchsrecht und Auskunftsrecht\nSie haben jederzeit das Recht auf unentgeltliche Auskunft über Ihre bei uns gespeicherten personenbezogenen Daten, deren Herkunft und Empfänger und den Zweck der Datenverarbeitung sowie ein Recht auf Berichtigung, Sperrung oder Löschung dieser Daten.\n\nWenn Sie Fragen hierzu haben, die Ihnen diese Datenschutzerklärung nicht beantworten konnte, können Sie sich jederzeit über die im Impressum vermerkten Kontaktmöglichkeiten an uns wenden.\n\nCopyright:\n\nSämtliche erstellte Inhalte [Texte, Fotos, Design] unterliegen dem geltenden Urheberrecht und dürfen nicht reprodukziert werden. Jede vom Urheberrecht nicht zugelassene Verwendung bedarf der vorherigen schriftlichen Zustimmung des Autors. Dies gilt insbesondere für Vervielfältigungen sowie die Speicherung und Verarbeitung in elektronischen Systemen.\n\nHaftungshinweis:\n\nTrotz sorgfältiger inhaltlicher Kontrolle übernehmen wir keine Haftung für die Inhalte externer Links. Für den Inhalt der verlinkten Seiten sind ausschließlich deren Betreiber verantwortlich.\n\nLinks zu anderen Websites:\n\nUnser Online-Angebot enthält Links zu anderen Websites. Wir haben keinen Einfluss darauf, dass deren Betreiber die Datenschutzbestimmungen einhalten.\n\nFragen und Kommentare:\n\nFür Fragen, Anregungen oder Kommentare zum Thema Datenschutz wenden Sie sich bitte per E-Mail an uns.\n\nBildnachweis:\n\nAlle auf dieser Website (http://www.rayen-intec.com) verwendeten Bilder werden mit Genehmigung der Plattform Fotolia (http://www.fotolia.com) verwendet',
        nav1: null,
        pic: 'assets/images/logo_esf.jpg',
      ),
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
                crossAxisCount: 1,
                childAspectRatio: 1,
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
