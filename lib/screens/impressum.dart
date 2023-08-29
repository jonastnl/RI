import 'package:flutter/material.dart';

import 'package:mynotes/widget/appbar.dart';
import 'package:mynotes/widget/bottom_bar.dart';
import 'package:mynotes/widget/myContainerPic.dart';

class Impressum extends StatefulWidget {
  const Impressum({super.key});

  @override
  State<Impressum> createState() => _Impressum();
}

class _Impressum extends State<Impressum> {
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
