import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../common/constant/app_colors.dart';
import 'stock_dummy.dart';

class Mystock extends StatelessWidget {
  const Mystock({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
      color: AppColors.myBackground,
      child: Column(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                '보유 주식'.text.white.bold.size(17).make(),
                const Icon(Icons.keyboard_arrow_right, color: Colors.grey),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                '1,142,529원'.text.white.size(25).bold.make(),
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: AppColors.darkGrey,
                  ),
                  child: '내 계좌 보기'.text.size(10).make(),
                )
              ],
            ),
            '+111,852원(10.8%)'.text.color(Colors.red).size(15).make(),
            const SizedBox(height: 10),
            const stocklistwidget(0),
            const stocklistwidget(1),
            const stocklistwidget(2),
            const stocklistwidget(3),
          ],
        ),
      ]),
    );
  }
}

class StockLine extends StatelessWidget {
  const StockLine({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class stocklistwidget extends StatelessWidget {
  final int index;
  const stocklistwidget(
    this.index, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Image.asset(
            stockList[index].stock.imagepath,
            width: 50,
          ),
          SizedBox(width: 10),
          stockList[index].stock.dummyStockName.text.bold.white.size(15).make(),
          Expanded(child: Container()),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              if (stockList[index].percent > 0)
                '+${stockList[index].percent}%'
                    .text
                    .color(Colors.red)
                    .size(17)
                    .make()
              else if (stockList[index].percent == 0)
                '${stockList[index].percent}%'
                    .text
                    .size(17)
                    .color(Colors.grey)
                    .make()
              else
                '${stockList[index].percent}%'.text.color(Colors.blue).make(),
              '${stockList[index].price.toComma()}원'.text.white.size(17).make()
            ],
          )
        ],
      ),
    );
  }
}
