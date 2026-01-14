import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class BuildNote extends StatelessWidget {
  final Color color;
  final String noteText;
  final String noteNumber;

  const BuildNote({
    super.key,
    required this.color,
    required this.noteText,
    required this.noteNumber,
  });

  void playNotes() {
    final player = AudioPlayer();
    player.play(AssetSource('notes/note$noteNumber.mp3'));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      color: color,
      child: TextButton(
        onPressed: playNotes,
        child: Text(
          noteText,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
