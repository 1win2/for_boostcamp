import 'package:fast_app_base/screen/main/tab/stock/search/search_stock_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'w_auto_search_list.dart';
import 'w_popular_stock.dart';
import 'w_search_history.dart';
import 'w_stock_search_appbar.dart';

class StockSearchScreen extends StatefulWidget {
  const StockSearchScreen({super.key});

  @override
  State<StockSearchScreen> createState() => _StockSearchScreenState();
}

class _StockSearchScreenState extends State<StockSearchScreen>
    with SearchStockDataProvider {
  final controller = TextEditingController();

  @override
  void initState() {
    Get.put(SearchStockData());
    controller.addListener(() {
      searchdata.search(controller.text);
    });
    super.initState();
  }

  @override
  void dispose() {
    Get.delete<SearchStockData>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: StockSearchAppbar(controller: controller),
        body: Obx(
          () => searchdata.autoCompleteList.isEmpty
              ? ListView(
                  children: [
                    SearchHistoryStockList(),
                    PopularSearchStockList(),
                  ],
                )
              : AutoSearchList(controller),
        ));
  }
}
