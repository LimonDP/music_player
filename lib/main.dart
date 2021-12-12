import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Audio Player',
        home: MyApp(),
      ),
    );

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void audioFuncrion(int serialNumber) {
    final player = AudioCache();
    player.play(
      'note$serialNumber.wav',
    );
  }

  Widget audioMusic({required Color color, required int serialNumber}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
          primary: Colors.white,
        ),
        onPressed: () => audioFuncrion(serialNumber),
        child: Text('Play $serialNumber'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Audio Player'),
        centerTitle: true,
      ),
      body: Material(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            audioMusic(color: Colors.red, serialNumber: 1),
            audioMusic(color: Colors.green, serialNumber: 2),
            audioMusic(color: Colors.pink, serialNumber: 3),
            audioMusic(color: Colors.teal, serialNumber: 4),
            audioMusic(color: Colors.cyan, serialNumber: 5),
            audioMusic(color: Colors.orange, serialNumber: 6),
            audioMusic(color: Colors.brown, serialNumber: 7),
          ],
        ),
      ),
    );
  }
}
