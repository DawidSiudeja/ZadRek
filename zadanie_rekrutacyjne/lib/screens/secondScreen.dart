import 'package:flutter/material.dart';

class secondScreen extends StatelessWidget {
  final String textResultSecondScreen;

  const secondScreen({
    Key? key,
    required this.textResultSecondScreen
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text(
        "Wynik",
        style: TextStyle(color: Colors.white),
      ),
      backgroundColor: Colors.black54,
      centerTitle: true,
    ),
    body: SingleChildScrollView(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(textResultSecondScreen, style: TextStyle(fontSize: 30, color: Colors.red))
        ],
      ),
    )
  );
}