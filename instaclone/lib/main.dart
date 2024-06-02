import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'body.dart';

void main() {
  runApp(const InstaClone());
}

class InstaClone extends StatelessWidget {
  const InstaClone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme: const ColorScheme.light(
            primary: Colors.white,
            secondary: Colors.black,
          ),
          useMaterial3: true,
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.black,
          )),
      home: const InstaCloneHome(),
    );
  }
}

class InstaCloneHome extends StatefulWidget {
  const InstaCloneHome({super.key});

  @override
  State<InstaCloneHome> createState() => _InstaCloneHomeState();
}

class _InstaCloneHomeState extends State<InstaCloneHome> {
  late int index;

  @override
  void initState() {
    super.initState();
    index = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: index == 0
          ? AppBar(
              actions: [
                IconButton(
                  icon: const Icon(
                    Icons.favorite_border_sharp,
                    size: 28,
                  ),
                  onPressed: () {
                    print('Tab Favorite!');
                  },
                ),
                IconButton(
                  icon: const Icon(
                    CupertinoIcons.paperplane,
                    size: 26,
                  ),
                  onPressed: () {
                    print('Tab!');
                  },
                ),
              ],
              centerTitle: false,
              title: Text(
                'Instagram',
                style:
                    GoogleFonts.lobsterTwo(color: Colors.black, fontSize: 30),
              ),
            )
          : null,
      body: Instabody(index: index),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (newIndex) => setState(() => index = newIndex),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              size: 32,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                size: 32,
              ),
              label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 32,
              ),
              label: 'Posting'),
        ],
      ),
    );
  }
}
