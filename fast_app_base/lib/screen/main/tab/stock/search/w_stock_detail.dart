import 'package:fast_app_base/app.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

class StockDetail extends StatelessWidget {
  const StockDetail({super.key, required this.stockName});
  final String stockName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(stockName),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: ['주식 상세'.text.make()],
        ),
      ),
    );
  }
}
