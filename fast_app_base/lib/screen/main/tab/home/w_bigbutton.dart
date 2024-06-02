import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widget/w_arrow.dart';

class Bigbutton extends StatelessWidget {
  final String title;
  const Bigbutton(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromARGB(255, 23, 23, 23),
      ),
      margin: EdgeInsets.symmetric(vertical: 6, horizontal: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [title.text.white.bold.size(22).make(), Arrow()],
      ),
    );
  }
}

class Smallbutton extends StatelessWidget {
  final String title;
  const Smallbutton(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      decoration: BoxDecoration(color: Color.fromARGB(255, 23, 23, 23)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          title.text.white.bold.size(17).bold.make(),
          Arrow(iconcolor: Colors.grey)
        ],
      ),
    );
  }
}

class Mybutton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const Mybutton(this.title, {required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      decoration: BoxDecoration(color: AppColors.myBackground),
      child: Tap(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            title.text.white.bold.size(17).bold.make(),
            Arrow(iconcolor: Colors.grey)
          ],
        ),
      ),
    );
  }
}
