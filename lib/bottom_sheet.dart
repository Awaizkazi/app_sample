import 'package:flutter/material.dart';

class ModalBottomSheets extends StatefulWidget {
  const ModalBottomSheets({super.key});

  @override
  State<ModalBottomSheets> createState() => _ModalBottomSheetsState();
}

class _ModalBottomSheetsState extends State<ModalBottomSheets> {
  String _selectedItem = '';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              context: context,
              builder: ((context) {
                return Stack(
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.close)),
                    Container(
                      height: 140,
                      child: Column(
                        children: [
                          TextButton(
                            onPressed: () {
                              // _selectedItems('Are You Sure To Remove This Photo');
                            },
                            child: Text(
                              'Are You Sure To Remove This Photo',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text('Cancel'),
                              ),
                              TextButton.icon(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Icon(
                                  Icons.delete,
                                  color: Colors.red,
                                ),
                                label: Text(
                                  'Remove',
                                  style: TextStyle(color: Colors.red),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              }),
            );
          },
          child: Text('Delete'),
        ),
      ),
      color: Colors.white,
    );
  }

  void _selectedItems(String name) {
    Navigator.pop(context);
    setState(() {
      _selectedItem = name;
    });
  }
}
