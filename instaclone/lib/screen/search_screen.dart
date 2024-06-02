import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  height: 40,
                  width: 200,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: '검색',
                      hintStyle: TextStyle(color: Colors.grey),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      fillColor: Colors.grey.shade200,
                      filled: true,
                      contentPadding: const EdgeInsets.all(1),
                      prefixIcon: Icon(
                        CupertinoIcons.search,
                        size: 20,
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {}, icon: Icon(CupertinoIcons.add_circled)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
