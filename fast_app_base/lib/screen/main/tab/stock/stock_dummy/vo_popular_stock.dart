import 'package:fast_app_base/screen/main/tab/stock/stock_dummy/vo_simple_stock.dart';

class PopularStock extends SimpleStock {
  final int yesterdayClosePrice;
  final int currentPrice;

  PopularStock({
    required String stockName,
    required this.yesterdayClosePrice,
    required this.currentPrice,
  }) : super(stockName);
}
