import 'package:flutter/material.dart';

class ListBackground extends StatelessWidget {
  final Widget? child;
  final double height;

  const ListBackground({required this.height, required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: EdgeInsets.only(top: 10),
      width: double.infinity,
      height: height,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 3),
          )
        ],
        borderRadius: BorderRadius.circular(10),
        border: Border.all(),
      ),
      child: child,
    );
  }
}
