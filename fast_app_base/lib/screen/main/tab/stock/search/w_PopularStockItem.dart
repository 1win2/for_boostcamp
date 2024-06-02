import 'package:fast_app_base/screen/main/tab/stock/stock_dummy/vo_popular_stock.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class PopularStockItem extends StatelessWidget {
  final PopularStock stock;
  final int number;
  const PopularStockItem(
      {super.key, required this.stock, required this.number});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        number.text.color(Colors.grey).make(),
        SizedBox(width: 50),
        stock.stockName.text.size(18).color(Colors.grey).make(),
        Expanded(child: Container()),
      ],
    ).pSymmetric(h: 20, v: 10);
  }
}
