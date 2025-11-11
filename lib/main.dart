import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const RandomQuote());
}

class RandomQuote extends StatefulWidget {
  const RandomQuote({super.key});

  @override
  State<RandomQuote> createState() {
    return _RandomQuoteState();
  }
}

class _RandomQuoteState extends State<RandomQuote> {
  List<String> emoji = ['❓', '🚀', '🦾', '❤'];
  List<String> quote = [
    'Tap "New Quote" to get motivated ✨',
    'You can do it!',
    'Keep going!',
    'Belive in yourself!',
  ];
  List<Color> col = [
    Colors.blueGrey,
    Colors.greenAccent,
    Colors.lightBlueAccent,
    Colors.orangeAccent,
  ];

  int index = 0;
  Random _rand = Random();

  void choose() {
    setState(() {
      index = _rand.nextInt(3) + 1;
    });
  }

  void reset() {
    setState(() {
      index = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${quote[index]}',
                style: TextStyle(backgroundColor: col[index]),
              ),
              SizedBox(height: 30),
              Text('${emoji[index]}'),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: choose,
                    child: Text('New Quote'),
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                        Color.fromARGB(121, 6, 196, 221),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: reset,
                    child: Text('Reset'),
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                        Color.fromARGB(121, 238, 20, 20),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}*/
