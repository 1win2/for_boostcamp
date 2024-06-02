import 'package:fast_app_base/screen/main/tab/stock/stock_dummy/vo_popular_stock.dart';

class Stock extends PopularStock {
  final String stockImagePath;

  Stock({
    required this.stockImagePath,
    required super.currentPrice,
    required super.yesterdayClosePrice,
    required super.stockName,
  });
}
