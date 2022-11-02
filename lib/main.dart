import 'package:flutter/material.dart';

import 'package:app_sample/home.dart';

import 'bottom_sheet.dart';
import 'ex.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ModalBottomSheets(),
    );
  }
}
