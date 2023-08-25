import 'package:flutter/material.dart';
import 'package:mynotes/screens/automatisierung.dart';
import 'package:mynotes/screens/hardware.dart';

import 'package:mynotes/screens/home.dart';
import 'package:mynotes/screens/unternehmen.dart';
import 'package:mynotes/widget/bottom_bar.dart';
import 'package:mynotes/widget/myContainer1.dart';
import 'package:mynotes/widget/myContainerPic.dart';

class Jobs extends StatefulWidget {
  const Jobs({super.key});

  @override
  State<Jobs> createState() => _Jobs();
}

class _Jobs extends State<Jobs> {
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
                  myInkWell('Kontakt', null, 4),
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
      MyContainer1(
        context: context,
        alignment: Alignment.topLeft,
        color: const Color.fromARGB(255, 53, 80, 112).withOpacity(1),
        text: 'Profil',
        text2:
            'Die RAYEN INTEC GmbH wurde im Jahr 1990 als Dienstleister für Entwicklung industrieller Anlagenautomatisierung gegründet. Die zu dieser Zeit beginnende Verschmelzung von Automatisierung und elektronischer Datenverarbeitung führte uns zu einem zukuftsorierentierten Jobs in den Geschäftbereichen von Automatisierung sowie IT-Hard- and Software. \n\nHeute verstehen wir uns als modernes, leistungsstarkes und innovatives Jobs für unseren Kunden. Gemeinsam optimieren wir Prozesse, erstellen Lösungen und integrieren diese in vorhandene IT-Systeme. Fortschritt und Innovation sind unser Antrieb!',
        nav1: null,
      ),
      Container(
        child: SizedBox(
            height: screenSize.height * 0.4,
            width: screenSize.width,
            child: Image.asset(
              'assets/images/pexels-cátia-matos-1072179.jpg',
              fit: BoxFit.cover,
            )),
      ),
    ];

    List<Widget> containersSmall = [
      Container(
        child: SizedBox(
            child: Image.asset(
          'assets/images/pexels-cátia-matos-1072179.jpg',
          fit: BoxFit.cover,
        )),
      ),
      MyContainerPic(
        context: context,
        alignment: Alignment.topLeft,
        color: const Color.fromARGB(255, 154, 3, 30).withOpacity(0.5),
        text: 'BMWi-Förderung',
        text2: '1',
        nav1: null,
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
                    'assets/images/audiJobs.jpg',
                    fit: BoxFit.cover,
                  )),
            ]),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2.5,
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
          SliverToBoxAdapter(child: BottomBar()),
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
/*
  void navigateToKontakt(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Kontakt()),
    );
  }
  */
