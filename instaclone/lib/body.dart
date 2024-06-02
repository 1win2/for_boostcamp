import 'package:flutter/material.dart';

import 'screen/home_screen.dart';
import 'screen/search_screen.dart';

class Instabody extends StatelessWidget {
  final int index;
  const Instabody({required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    if (index == 0) {
      return HomeScreen();
    }
    return SearchScreen();
  }
}
