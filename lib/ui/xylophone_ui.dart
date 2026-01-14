import 'package:flutter/material.dart';
import 'package:xylophone_app/widgets/build_note.dart';

class XylophoneUi extends StatelessWidget {
  const XylophoneUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 46, 44, 44),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 46, 44, 44),
        title: Text(
          'Flutter Xylophone',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            BuildNote(color: Colors.red, noteText: "Do", noteNumber: '1'),
            BuildNote(color: Colors.orange, noteText: "Re", noteNumber: '2'),
            BuildNote(color: Colors.yellow, noteText: "Mi", noteNumber: '3'),
            BuildNote(color: Colors.green, noteText: "Fa", noteNumber: '4'),
            BuildNote(color: Colors.teal, noteText: "Sol", noteNumber: '5'),
            BuildNote(color: Colors.blue, noteText: "La", noteNumber: '6'),
            BuildNote(color: Colors.purple, noteText: "Si", noteNumber: '7'),
          ],
        ),
      ),
    );
  }
}
