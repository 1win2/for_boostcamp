import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/dart/extension/datetime_extension.dart';
import 'package:fast_app_base/screen/main/tab/stock/search/popular_Stock_dummy.dart';
import 'package:flutter/material.dart';

import 'w_PopularStockItem.dart';

class PopularSearchStockList extends StatelessWidget {
  const PopularSearchStockList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            '인기 검색'.text.bold.size(20).make(),
            Expanded(child: Container()),
            '오늘 ${DateTime.now().formattedTime} 기준'
                .text
                .color(Colors.grey)
                .make(),
          ],
        ).pSymmetric(h: 20),
        SizedBox(
          height: 20,
        ),
        ...popularStockList
            .mapIndexed((element, index) =>
                PopularStockItem(stock: element, number: index + 1))
            .toList(),
      ],
    );
  }
}
