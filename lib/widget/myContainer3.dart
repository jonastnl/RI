import 'package:flutter/material.dart';

class MyContainer3 extends StatelessWidget {
  const MyContainer3({
    super.key,
    required this.context,
    required this.alignment,
    required this.color,
    required this.text,
    required this.text2,
    required this.text3,
    required this.nav1,
  });

  final BuildContext context;
  final alignment;
  final color;
  final String text;
  final String text2;
  final String text3;
  final nav1;

  @override
  Widget build(BuildContext context) {
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
                        fontSize: 20, fontWeight: FontWeight.bold)),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(text2, style: const TextStyle(fontSize: 15)),
                    const SizedBox(width: 20),
                    Text(text3, style: const TextStyle(fontSize: 15)),
                  ],
                ),
                const SizedBox(height: 10),
              ]))))
    ]);
  }
}
