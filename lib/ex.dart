import 'package:flutter/material.dart';

// Color mainColor = Color(0xfff04592);

class Example extends StatefulWidget {
  const Example({super.key});

  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  bool isblack = false;
  @override
  Widget build(BuildContext context) {
    var containerColor = Colors.white;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: 300,
                  height: 300,
                  color: containerColor == Colors.white
                      ? Colors.blue
                      : Colors.black12),
            ],
          ),
        ),
      ),
    );
  }
}
