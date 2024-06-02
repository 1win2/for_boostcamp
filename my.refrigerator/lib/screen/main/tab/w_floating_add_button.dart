import 'package:flutter/material.dart';

class FloatingAddButton extends StatefulWidget {
  const FloatingAddButton({super.key});

  @override
  State<FloatingAddButton> createState() => _FloatingAddButtonState();
}

class _FloatingAddButtonState extends State<FloatingAddButton> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: Colors.red,
      shape: CircleBorder(),
      child: Icon(
        Icons.add,
        color: Colors.white,
        size: 35,
      ),
    );
  }
}
