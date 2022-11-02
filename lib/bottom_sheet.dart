import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ModalBottomSheets extends StatefulWidget {
  const ModalBottomSheets({super.key});

  @override
  State<ModalBottomSheets> createState() => _ModalBottomSheetsState();
}

class _ModalBottomSheetsState extends State<ModalBottomSheets> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: ((context) {
                return Container();
              }),
            );
          },
          child: Text('Show Modal Bottom Sheet'),
        ),
      ),
    );
  }
}
