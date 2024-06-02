import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/stock/search/search_stock_data.dart';
import 'package:flutter/material.dart';

import 'w_stock_detail.dart';

class AutoSearchList extends StatelessWidget with SearchStockDataProvider {
  final TextEditingController controller;
  AutoSearchList(this.controller, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: searchdata.autoCompleteList.length,
      itemBuilder: (context, index) {
        final stock = searchdata.autoCompleteList[index];
        final stockName = stock.stockName;

        return Tap(
          onTap: () {
            controller.clear();
            searchdata.addHistory(stock);
            Nav.push(StockDetail(stockName: stockName));
          },
          child: stock.stockName.text.make().p(20),
        );
      },
    );
  }
}
