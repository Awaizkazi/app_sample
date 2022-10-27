import 'package:flutter/material.dart';

class Example extends StatefulWidget {
  const Example({super.key});

  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  bool isblack = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: InkWell(
          onTap: (() {
            setState(() {
              isblack = !isblack;
            });
          }),
          child: Container(
            margin: EdgeInsets.all(30),
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              color: isblack ? Colors.amber : Colors.white,
              border: Border.all(color: Colors.purple, width: 2),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}
