import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:mynotes/variables.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    _loadNotes();
  }

  Future<void> _loadNotes() async {
    //Note laden
    final prefs = await SharedPreferences
        .getInstance(); //Instanz von Shared Preferences holen
    setState(() {
      Register.notes = jsonDecode(prefs.getString('notes') ??
          '{}'); //Setze Register.notes auf den Inhalt der gespeicherten Notizen oder auf ein leeres JSON-Objekt, wenn keine Notizen vorhanden sind
    });
  }

  Future<void> _saveNotes(Map<String, String> notes) async {
    //Note speichern
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(
        'notes',
        jsonEncode(
            notes)); // Speichere die Notizen als json-String in den SharedPreferences
  }

  Future<void> _displayDialog(BuildContext context, {String? editKey}) async {
    //TextEditingController für Titel und Text erstellen
    TextEditingController _titleController =
        TextEditingController(text: editKey);
    TextEditingController _contentController =
        TextEditingController(text: Register.notes[editKey]);

    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            //Titel/Texteingabe
            title: Text(editKey == null ? 'Add a new note' : 'Edit note'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  //Titel
                  controller: _titleController,
                  decoration: const InputDecoration(labelText: 'Title'),
                  style: const TextStyle(fontSize: 20),
                ),
                TextField(
                  //Text
                  controller: _contentController,
                  decoration: const InputDecoration(labelText: 'Content'),
                  maxLines: 8,
                  style: const TextStyle(fontSize: 20),
                ),
              ],
            ),
            actions: <Widget>[
              ElevatedButton(
                //Button zum abbrechen der Eingabe
                child: const Text('CANCEL'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              ElevatedButton(
                //Button zum speichern der Eingabe in den TextEditingControllern
                child: Text(editKey == null ? 'ADD' : 'UPDATE'),
                onPressed: () {
                  if (_titleController.text.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('Title empty'),
                      backgroundColor: Color.fromARGB(255, 249, 0, 232),
                    ));
                    throw Exception('Title field cannot be empty');
                  }
                  setState(() {
                    Register.notes[_titleController.text] =
                        _contentController.text;
                    _saveNotes(Register.notes);
                  });
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(127, 43, 43, 45),

      //homepage anzeige
      //backgroundColor: const Color.fromARGB(127, 43, 43, 45),
      body: SafeArea(
        child: Center(
          child: Column(children: <Widget>[
            Container(
              alignment: Alignment.topLeft,
              child: const Row(children: <Widget>[
                SizedBox(
                  width: 5,
                ),
                /*ElevatedButton(
                  //Route zur Startseite
                  onPressed: () {
                    Navigator.pop(context);
                  }, // extra funktion, die void ist
                  child: const Text("go Back"),
                )*/
              ]),
            ),
            SingleChildScrollView(
              //anzeige der gespeicherten Notizen in einer scrollbaren Liste
              scrollDirection: Axis.vertical,
              child: Container(
                //eingrenzen der größe der liste
                height: MediaQuery.of(context).size.height * 0.9,
                width: MediaQuery.of(context).size.width * 0.8,
                child: ListView(
                  children: Register.notes.keys.map((key) {
                    return Card(
                      //color: Color.fromARGB(255, 125, 194, 249),
                      child: ListTile(
                        title: Text(key, style: const TextStyle(fontSize: 20)),
                        onTap: () => _displayDialog(context, editKey: key),
                        trailing: IconButton(
                          //Button zum löschen einer Notiz
                          icon: const Icon(Icons.delete),
                          onPressed: () {
                            setState(() {
                              Register.notes.remove(key);
                              _saveNotes(Register.notes);
                            });
                          },
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            )
          ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        //Button zum erstellen einer Notiz
        onPressed: () => _displayDialog(context),
        tooltip: 'Add Note',
        // ignore: prefer_const_constructors
        child: const Icon(Icons.add),
      ),
    );
  }
}
