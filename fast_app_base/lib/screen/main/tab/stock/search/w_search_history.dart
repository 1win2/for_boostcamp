import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/data/preference/app_preferences.dart';
import 'package:flutter/material.dart';

import 'search_stock_data.dart';

class SearchHistoryStockList extends StatefulWidget {
  const SearchHistoryStockList({super.key});

  @override
  State<SearchHistoryStockList> createState() => _SearchHistoryStockListState();
}

class _SearchHistoryStockListState extends State<SearchHistoryStockList>
    with SearchStockDataProvider {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      width: double.infinity,
      child: Obx(
        () => ListView.builder(
            itemCount: searchdata.searchHistoryList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 1, horizontal: 12),
                  margin: EdgeInsets.symmetric(vertical: 13, horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: AppColors.darkGrey,
                  ),
                  child: Row(
                    children: [
                      searchdata.searchHistoryList[index].text.size(15).make(),
                      const SizedBox(
                        width: 10,
                      ),
                      const Icon(
                        Icons.close,
                        color: Colors.grey,
                        size: 20,
                      )
                    ],
                  ));
            }),
      ),
    );
  }
}
