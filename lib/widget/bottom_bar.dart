import 'package:flutter/material.dart';
import 'package:mynotes/screens/home.dart';
import 'package:mynotes/widget/bottom_bar_column.dart';
import 'package:mynotes/widget/info_text.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/images/pexels-cátia-matos-1072179.jpg'),
        fit: BoxFit.cover,
      )),
      //color: const Color.fromARGB(255, 128, 151, 162).withOpacity(0.3),
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BottomBarColumn(
                heading: 'Über',
                s1: 'Kontakt',
                s2: 'Profil',
                s3: 'Jobs',
                dest1: navigateToKontakt,
                dest2: navigateToUnternehmen,
                dest3: navigateToJobs,
              ),
              BottomBarColumn(
                heading: 'HELP',
                s1: 'Impressum',
                s2: 'Datenschutz',
                s3: 'AGB',
                dest1: navigateToImpressum,
              ),
              BottomBarColumn(
                heading: 'SOCIAL',
                s1: 'LinkedIN',
                s2: 'Facebook',
                s3: 'YouTube',
              ),
              Container(
                color: Colors.blueGrey,
                width: 2,
                height: 150,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InfoText(
                    type: 'Email',
                    text: 'info@rayen-intec.de',
                  ),
                  SizedBox(height: 5),
                  InfoText(
                    type: 'Adresse',
                    text: 'Am Hohen Ufer 4, 07318 Saalfeld',
                  )
                ],
              ),
            ],
          ),
          /*Divider(
            color: Colors.blueGrey,
          ),
          SizedBox(height: 20),
          Text(
            'Copyright © 2020 | EXPLORE',
            style: TextStyle(
              color: Colors.blueGrey[300],
              fontSize: 14,
            ),
          ),*/
        ],
      ),
    );
  }
}
