import 'package:flutter/material.dart';

class MyContainerPic extends StatelessWidget {
  const MyContainerPic({
    super.key,
    required this.context,
    required this.alignment,
    required this.color,
    required this.text,
    required this.text2,
    required this.nav1,
  });

  final BuildContext context;
  final alignment;
  final color;
  final String text;
  final String text2;
  final nav1;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Column(children: [
      Expanded(
          child: Container(
              padding: const EdgeInsets.all(8),
              color: color,
              alignment: alignment,

              //color: Colors.teal[200],
              child: SingleChildScrollView(
                  child: Column(children: <Widget>[
                Text(text,
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold)),
                const SizedBox(height: 10),
                Text(text2, style: const TextStyle(fontSize: 15)),
                const SizedBox(height: 10),
                Row(children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      nav1(context);
                    },
                    child: const Text('mehr Erfahren...'),
                  ),
                ]),
                SizedBox(
                    height: screenSize.height * 0.2,
                    child: Image.asset(
                      'assets/images/BMWi.gif',
                      fit: BoxFit.cover,
                    )),
              ]))))
    ]);
  }
}
