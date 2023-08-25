import 'package:flutter/material.dart';

class MyContainer2 extends StatelessWidget {
  const MyContainer2({
    super.key,
    required this.context,
    required this.alignment,
    required this.color,
    required this.text,
    required this.text2,
  });

  final BuildContext context;
  final alignment;
  final color;
  final String text;
  final List<String> text2;

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
              Card(
                child: ListTile(
                    leading: const Icon(Icons.work),
                    title: Text(text2[0]),
                    subtitle: Text(text2[1])),
              ),
              Card(
                child: ListTile(
                    leading: const Icon(Icons.work),
                    title: Text(text2[2]),
                    subtitle: Text(text2[3])),
              ),
              const SizedBox(height: 10),
            ]))),
      )
    ]);
  }
}
