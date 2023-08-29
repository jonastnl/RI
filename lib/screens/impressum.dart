import 'package:flutter/material.dart';
import 'package:mynotes/screens/automatisierung.dart';
import 'package:mynotes/screens/hardware.dart';

import 'package:mynotes/screens/home.dart';
import 'package:mynotes/screens/jobs.dart';
import 'package:mynotes/screens/kontakt.dart';
import 'package:mynotes/screens/unternehmen.dart';
import 'package:mynotes/widget/bottom_bar.dart';
import 'package:mynotes/widget/myContainerPic.dart';

class Impressum extends StatefulWidget {
  const Impressum({super.key});

  @override
  State<Impressum> createState() => _Impressum();
}

class _Impressum extends State<Impressum> {
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
        text: 'Impressum',
        text2:
            'Für den Inhalt dieser Website i.S.d. §§ 6 MDStV & 6 TDG ist verantwortlich:\n\nFirmenanschrift:\nRAYEN INTEC GmbH\nAm Hohen Ufer 4\nD-07318 Saalfeld\nDeutschland\n\nGeschäftsführer:\nDipl.-Ing. Niclas Kögel\nDipl.-Ing. René Pernt\n\nKontakt - Telefonisch:\nTelefon: +49 (3671) 5366-0\nFax: +49 (3671) 5366-50\n\nKontakt - Internet:\ninfo@rayen-intec.de\nwww.rayen-intec.de\n\nUnsere Entwicklungs- und Forschungsprojekte werden unterstützt durch:',
        nav1: null,
        pic: 'assets/images/logo_esf.jpg',
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
