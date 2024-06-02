import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/home/vo_recipe.dart';
import 'package:flutter/material.dart';

class AddButton extends StatefulWidget {
  AddButton({super.key});

  @override
  State<AddButton> createState() => _AddButtonState();
}

class _AddButtonState extends State<AddButton> {
  @override
  Widget build(BuildContext context) {
    return Tap(
      onTap: () {
        setState(() {
          recipeList.add(Recipe(name: 'test'));
          print(recipeList.toList());
        });
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 75,
            height: 75,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.red,
            ),
          ),
          Container(
            width: 30,
            height: 3,
            decoration: BoxDecoration(color: Colors.white),
          ),
          Container(
            width: 3,
            height: 30,
            decoration: BoxDecoration(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
