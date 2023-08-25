import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Checkliste extends StatefulWidget {
  const Checkliste({Key? key}) : super(key: key);
  @override
  _ChecklisteState createState() => _ChecklisteState();
}

class _ChecklisteState extends State<Checkliste> {
  List<Map<String, dynamic>> items = [
    {'title': 'Item 1', 'checked': false},
    {'title': 'Item 2', 'checked': false},
    {'title': 'Item 3', 'checked': false},
    {'title': 'Item 4', 'checked': false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Checkliste'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: ListView(
          children: items.map((item) {
            return Slidable(
              key: Key(item['title']),
              startActionPane: ActionPane(
                motion: const ScrollMotion(),
                children: [
                  SlidableAction(
                    onPressed: (context) async {
                      String? newTitle = await showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          String title = item['title'];
                          return AlertDialog(
                            title: const Text('Rename Checklist Item'),
                            content: TextField(
                              controller: TextEditingController(text: title),
                              onChanged: (value) {
                                title = value;
                              },
                            ),
                            actions: <Widget>[
                              TextButton(
                                child: const Text('CANCEL'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                              TextButton(
                                child: const Text('OK'),
                                onPressed: () {
                                  Navigator.of(context).pop(title);
                                },
                              ),
                            ],
                          );
                        },
                      );
                      if (newTitle != null && newTitle.isNotEmpty) {
                        setState(() {
                          item['title'] = newTitle;
                        });
                      }
                    },
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    icon: Icons.edit,
                    label: 'Rename',
                  ),
                ],
              ),
              endActionPane: ActionPane(
                motion: const ScrollMotion(),
                children: [
                  SlidableAction(
                    onPressed: (context) {
                      setState(() {
                        items.remove(item);
                      });
                    },
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    icon: Icons.delete,
                    label: 'Delete',
                  ),
                ],
              ),
              child: CheckboxListTile(
                title: Text(item['title']),
                value: item['checked'],
                onChanged: (bool? value) {
                  setState(() {
                    item['checked'] = value!;
                  });
                },
              ),
            );
          }).toList(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            String? title = await showDialog(
              context: context,
              builder: (BuildContext context) {
                String newTitle = '';
                return AlertDialog(
                  title: const Text('New Checklist Item'),
                  content: TextField(
                    onChanged: (value) {
                      newTitle = value;
                    },
                  ),
                  actions: <Widget>[
                    TextButton(
                      child: const Text('CANCEL'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    TextButton(
                      child: const Text('OK'),
                      onPressed: () {
                        Navigator.of(context).pop(newTitle);
                      },
                    ),
                  ],
                );
              },
            );
            if (title != null && title.isNotEmpty) {
              setState(() {
                items.add({'title': title, 'checked': false});
              });
            }
          },
          child: const Icon(Icons.add),
        ));
  }
}
