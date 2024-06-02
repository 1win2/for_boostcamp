import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

import '../../../../common/widget/round_button_theme.dart';
import '../../../../common/widget/w_round_button.dart';

class FavoriteFragment extends StatelessWidget {
  final bool isShowBackButton;

  const FavoriteFragment({
    Key? key,
    this.isShowBackButton = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        bottom: false,
        child: ToBuyTest(),
      ),
    );
  }
}

class ToBuyTest extends StatefulWidget {
  const ToBuyTest({super.key});

  @override
  State<ToBuyTest> createState() => _ToBuyTestState();
}

class _ToBuyTestState extends State<ToBuyTest> {
  List toBuy = ['감자'];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        '사야 할 것'.text.size(20).make(),
        SizedBox(
          height: 120,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Text(
                '✔' + toBuy[index],
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              );
            },
            itemCount: toBuy.length,
          ),
        ).pSymmetric(h: 10, v: 5),
        Container(
          alignment: Alignment.center,
          width: 120,
          height: 25,
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(8)),
          child: Tap(
              onTap: () {
                // toBuy.add('감자');
                setState(() {
                  toBuy.add('감자');
                  print(toBuy);
                });
              },
              child: '눌러서 추가하기'.text.make()),
        ).pSymmetric(
          h: 10,
        ),
      ],
    ).pSymmetric(h: 30);
  }
}
